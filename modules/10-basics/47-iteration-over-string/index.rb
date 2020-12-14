# frozen_string_literal: true

# BEGIN
def reverse(str)
  result = ''
  str.each_char do |c|
    result = "#{c}#{result}"
  end
  result
end
# END
