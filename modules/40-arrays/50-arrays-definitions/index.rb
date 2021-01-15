# frozen_string_literal: true

# BEGIN
def valid_date?(date)
  days = (1..31)
  months = (1..12)
  day, month = date.split('-')

  days.include?(day.to_i) && months.include?(month.to_i)
end
# END
