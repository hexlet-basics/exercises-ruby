# frozen_string_literal: true

# BEGIN
def average(start, finish)
  count = finish - start + 1
  sum = 0
  start.upto finish do |i|
    sum += i
  end
  sum.to_f / count
end
# END
