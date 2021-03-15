# frozen_string_literal: true

# BEGIN
module MyNumber
  def self.reverse_int(num)
    reversed_abs = num.abs.to_s.reverse.to_i
    num.positive? ? reversed_abs : -reversed_abs
  end
end
# END
