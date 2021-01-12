# frozen_string_literal: true

# BEGIN
def apply_blocks(data, blocks)
  blocks.reduce(data) { |acc, block| block.call(acc) }
end
# END
