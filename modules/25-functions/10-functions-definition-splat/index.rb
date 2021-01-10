# frozen_string_literal: true

# BEGIN
def merge_all(*hashes)
  result = {}
  hashes.each do |hash|
    result = result.merge(hash)
  end
  result
end
# END
