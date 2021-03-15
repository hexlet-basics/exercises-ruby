# frozen_string_literal: true

# BEGIN
def sort_cases(data)
  data.sort_by do |row|
    # destructuring example
    day, month, year = row.first.split('-')
    Time.new(year, month, day)
    # it is possible to chain blocks
  end.reverse
end
# END
