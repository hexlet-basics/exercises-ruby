# frozen_string_literal: true

def total_salary(logged_hours, salary, exchange_rate)
  sum = 0

  logged_hours.each do |hours|
    sum += hours * salary * exchange_rate
  end

  sum
end
