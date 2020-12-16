# frozen_string_literal: true

# BEGIN
def next_day
  today = Date.today
  Time.new today.year, today.month, today.day + 1
end
# END
