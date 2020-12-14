# BEGIN

# Ruby Way
# value.class in [Range, Array, hash] ? :complex : :simple

def type_of_type(value)
  if value.is_a?(Range) || value.is_a?(Array) || value.is_a?(Hash)
    :complex
  else
    :simple
  end
end

# END
