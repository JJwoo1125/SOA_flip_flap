# frozen_string_literal: true

# Module that can be included (mixin) to take and output Yaml data
module YamlBuddy
  require 'yaml'
  # take_ymal: converts a String with YMAL data into @data
  # parameter: ymal - a String in YMAL format
  def take_yaml(yaml)
    @data = YAML.safe_load(yaml)
  end

  # to_ymal: converts @data into ymal string
  # returns: String in YMAL format
  def to_yaml
    @data.to_yaml
  end
end
