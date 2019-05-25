# frozen_string_literal: true

require 'code_basics'

CodeBasics.execute!(__dir__) do |stdout, result|
  assert { stdout.empty? }
  assert { result.can_take_order?(false, false, false) == false }
  assert { result.can_take_order?(false, false, true) == true }
  assert { result.can_take_order?(false, true, false) == false }
  assert { result.can_take_order?(false, true, true) == true }
  assert { result.can_take_order?(true, false, false) == true }
  assert { result.can_take_order?(true, false, true) == true }
  assert { result.can_take_order?(true, true, false) == false }
  assert { result.can_take_order?(true, true, true) == true }
end
