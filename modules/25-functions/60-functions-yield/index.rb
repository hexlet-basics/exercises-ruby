# frozen_string_literal: true

# BEGIN
def my_filter(coll)
  result = []
  coll.each do |elem|
    result << elem if yield(elem)
  end
  result
end
# END
