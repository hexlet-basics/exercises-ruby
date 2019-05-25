# frozen_string_literal: true

require 'code_basics'

CodeBasics.execute!(__dir__) do |stdout|
  assert { stdout == "50\n13\n141" }
end
