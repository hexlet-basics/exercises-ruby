# frozen_string_literal: true

# BEGIN
def intersection(coll1, coll2)
  result = []
  coll1.each do |item|
    result << item if coll2.include? item
  end
  result
end
# END
