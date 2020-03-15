# frozen_string_literal: true

# BEGIN

def can_take_order?(works_today, occupied_today, force_assignment)
  works_today && !occupied_today || force_assignment
end

# END
