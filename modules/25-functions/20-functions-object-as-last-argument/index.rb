# frozen_string_literal: true

# BEGIN
def link_to(name, link, attributes = {})
  attr_pairs = attributes.any? ? [''] : []
  attributes.each do |key, value|
    attr_pairs << "#{key}=\"#{value}\""
  end
  attr_line = attr_pairs.join(' ')
  "<a href=\"#{link}\"#{attr_line}>#{name}</a>"
end
# END
