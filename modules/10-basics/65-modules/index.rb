# frozen_string_literal: true

# BEGIN
module Number
  def self.reverse_int(num)
    reversed_abs = num.abs.to_s.reverse.to_i
    if num.positive?
      reversed_abs
    else
      -reversed_abs
    end
  end
end
# END
