# frozen_string_literal: true

# BEGIN
# Ruby Way
# [Hash, Array, Range].include?(value.class) ? :complex : :simple

def type_of_type(value)
  if value.is_a?(Range) || value.is_a?(Array) || value.is_a?(Hash)
    :complex
  else
    :simple
  end
end
# END
