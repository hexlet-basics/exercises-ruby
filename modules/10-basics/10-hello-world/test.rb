require_relative '../../../lib/code_basics'

CodeBasics.execute!(__dir__) do |stdout|
  assert { stdout == 'Hello, World!' }
end
