# frozen_string_literal: true

# BEGIN
def convert(strings)
  strings.sort
         .filter { |str| str.end_with?('?') }
         .map(&:downcase)
end
# END
