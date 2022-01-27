# frozen_string_literal: true

# BEGIN
def convert(strings)
  strings.filter { |str| str.end_with?('?') }
         .map(&:downcase)
         .sort
end
# END
