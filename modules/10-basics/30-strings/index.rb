# frozen_string_literal: true

# BEGIN
def prepare_card_for_display(card_number)
  last_part = card_number[-4..-1]
  "**#{last_part}"
end
# END
