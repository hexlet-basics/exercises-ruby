# frozen_string_literal: true

require 'code_basics'

CodeBasics.execute!(__dir__) do |_stdout, result|
  assert do
    result.total_salary([1, 2, 3], 7, 60) == 2520
  end
  assert do
    result.total_salary([], 7, 60).zero?
  end
  assert do
    result.total_salary([1, 2, 3], 0, 60).zero?
  end
  assert do
    result.total_salary([1, 2, 3], 7, 0).zero?
  end
  assert do
    result.total_salary([], 0, 0).zero?
  end
  assert do
    result.total_salary([0], 1, 1).zero?
  end
  assert do
    result.total_salary([1], 1, 1) == 1
  end
end
