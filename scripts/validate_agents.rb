#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"

ROOT = File.expand_path("..", __dir__)
AGENT_DIR = File.join(ROOT, ".github", "agents")
REQUIRED_HEADINGS = [
  "# Identidad",
  "# Objetivo",
  "# Acciones permitidas",
  "# Acciones prohibidas",
  "# Formato de salida"
].freeze
ALLOWED_RISKS = %w[R0 R1 R2 R3 R4].freeze
BASE_TOOLS = %w[read search edit execute agent web todo].freeze
NAME_PATTERN = /\A[a-z0-9]+(?:-[a-z0-9]+)*\z/
SEMVER_PATTERN = /\A\d+\.\d+\.\d+\z/

errors = []
files = Dir.glob(File.join(AGENT_DIR, "*.agent.md")).sort

errors << "No se encontraron perfiles en .github/agents" if files.empty?

files.each do |path|
  relative = path.delete_prefix("#{ROOT}/")
  text = File.read(path, encoding: "UTF-8")

  unless text.start_with?("---\n")
    errors << "#{relative}: falta apertura de frontmatter"
    next
  end

  closing = text.index("\n---\n", 4)
  unless closing
    errors << "#{relative}: falta cierre de frontmatter"
    next
  end

  yaml_text = text[4...closing]
  body = text[(closing + 5)..] || ""

  begin
    data = YAML.safe_load(yaml_text, permitted_classes: [], aliases: false) || {}
  rescue Psych::SyntaxError => e
    errors << "#{relative}: YAML inválido: #{e.message.lines.first.strip}"
    next
  end

  basename = File.basename(path, ".agent.md")
  name = data["name"]
  description = data["description"]
  tools = data["tools"]
  metadata = data["metadata"] || {}

  errors << "#{relative}: name debe coincidir con #{basename}" unless name == basename
  errors << "#{relative}: nombre inválido" unless name.is_a?(String) && name.match?(NAME_PATTERN)
  errors << "#{relative}: description es obligatoria" unless description.is_a?(String) && !description.strip.empty?
  errors << "#{relative}: target debe ser github-copilot" unless data["target"] == "github-copilot"
  errors << "#{relative}: disable-model-invocation debe ser boolean" unless [true, false].include?(data["disable-model-invocation"])
  errors << "#{relative}: user-invocable debe ser boolean" unless [true, false].include?(data["user-invocable"])
  errors << "#{relative}: tools debe ser una lista explícita" unless tools.is_a?(Array)

  if tools.is_a?(Array)
    tools.each do |tool|
      valid = BASE_TOOLS.include?(tool) || tool.match?(%r{\A[a-zA-Z0-9._-]+/(?:\*|[a-zA-Z0-9._-]+)\z})
      errors << "#{relative}: herramienta no reconocida #{tool.inspect}" unless valid
    end
  end

  version = metadata["version"]
  risk = metadata["risk-level"]
  errors << "#{relative}: metadata.version debe usar SemVer" unless version.is_a?(String) && version.match?(SEMVER_PATTERN)
  errors << "#{relative}: risk-level inválido" unless ALLOWED_RISKS.include?(risk)

  REQUIRED_HEADINGS.each do |heading|
    errors << "#{relative}: falta sección #{heading}" unless body.include?(heading)
  end

  errors << "#{relative}: prompt supera 30.000 caracteres" if body.length > 30_000
  errors << "#{relative}: contiene tabuladores" if text.include?("\t")
end

if files.length < 15
  errors << "Se esperaban al menos 15 agentes y solo existen #{files.length}"
end

if errors.empty?
  puts "PASS: #{files.length} perfiles validados correctamente"
  exit 0
end

warn "FAIL: se encontraron #{errors.length} problemas"
errors.each { |error| warn "- #{error}" }
exit 1
