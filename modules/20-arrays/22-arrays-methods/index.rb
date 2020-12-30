# frozen_string_literal: true

# BEGIN
def amount_of_cases(data)
  amount = 0
  data.each do |row|
    amount += row.fetch(1, 0)
  end

  amount
end
# END
