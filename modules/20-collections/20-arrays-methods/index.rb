# frozen_string_literal: true

# BEGIN
def sort_cases(data)
  data.sort_by do |row|
    # destructuring example
    day, month, year = row.first.split('-')
    Time.new(year, month, day).to_i
  # it is possible to chain blocks
  end.reverse
  # by_countries = sorted_data.each_with_object({}) do |row, result|
  #   # destructuring example
  #   date, country_name, cases_count = row
  #   result[country_name] ||= []
  #   result[country_name] << [date, cases_count]
  # end
  # raise by_countries.inspect
end
# END
