# frozen_string_literal: true

# BEGIN
  def prepare_card_for_display(card_number)
    last_part = card_number[12, 4]
    "**#{last_part}"
  end
# END
