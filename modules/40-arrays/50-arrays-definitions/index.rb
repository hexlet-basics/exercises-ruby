# frozen_string_literal: true

# BEGIN
def valid_date?(date)
  day, month = date.split('-').map(&:to_i)
  day.between?(1, 31) && month.between?(1, 12)
end
# END
