# frozen_string_literal: true

# BEGIN
TRUE_LOGIC = ->(a) { ->(_b) { a } }

FALSE_LOGIC = ->(_a) { ->(b) { b } }

def if_logic(f)
  f
end
# END
