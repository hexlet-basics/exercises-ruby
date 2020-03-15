# frozen_string_literal: true

# rubocop:disable Style/NumericPredicate

# BEGIN

def leap?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

# END

# rubocop:enable Style/NumericPredicate
