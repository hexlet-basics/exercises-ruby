# frozen_string_literal: true

# BEGIN
def intersection(coll1, coll2)
  result = []
  coll1.each do |item1|
    coll2.each do |item2|
      result << item1 if item1 == item2
    end
  end
  result
end
# END
