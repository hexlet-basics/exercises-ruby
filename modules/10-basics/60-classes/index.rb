# frozen_string_literal: true

# BEGIN
def next_day
  today = Date.today
  tomorrow = today.next
  Time.new tomorrow.year, tomorrow.month, tomorrow.day
end
# END
