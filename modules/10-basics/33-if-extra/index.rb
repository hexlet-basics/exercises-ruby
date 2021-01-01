# frozen_string_literal: true

# BEGIN
def get_sentence_tone(sentence)
  sentence.upcase == sentence ? 'scream' : 'general'
end
# END
