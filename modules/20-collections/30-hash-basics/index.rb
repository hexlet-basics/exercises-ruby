# frozen_string_literal: true

# BEGIN
def get_words_count_by_lang(data)
  # simple solution: data.split.tally
  words = data.split
  result = {}
  words.each do |word|
    result[word] ||= 0
    result[word] += 1
  end
  result
end
# END
