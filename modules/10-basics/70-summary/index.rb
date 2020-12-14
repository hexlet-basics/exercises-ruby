# frozen_string_literal: true

# BEGIN
def sum_of_digits(num_as_str)
  sum = 0
  num_as_str.each_char do |char|
    sum += char.to_i
  end
  sum
end

def happy?(number)
  num_as_str = number.to_s
  half_count = num_as_str.length / 2
  left_sum = sum_of_digits num_as_str[0, half_count]
  right_sum = sum_of_digits num_as_str[half_count, half_count]
  left_sum == right_sum
end
# END
