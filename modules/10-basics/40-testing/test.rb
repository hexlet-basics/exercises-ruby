# frozen_string_literal: true

require 'code_basics'

CodeBasics.execute!(__dir__) do |stdout|
  assert { stdout == '9780262531962' }
end
