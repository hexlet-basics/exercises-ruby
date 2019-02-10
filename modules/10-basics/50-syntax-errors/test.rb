# frozen_string_literal: true

require 'code_basics'

CodeBasics.execute!(__dir__) do |stdout|
  assert { stdout == 'What Is Dead May Never Die' }
end
