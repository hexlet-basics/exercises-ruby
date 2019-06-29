# frozen_string_literal: true

require 'code_basics'

CodeBasics.execute!(__dir__) do |_stdout, result|
  assert do
    result.total_salary(6, 7, 60) == 2520
  end
  assert do
    result.total_salary(0, 7, 60).zero?
  end
  assert do
    result.total_salary(6, 0, 60).zero?
  end
  assert do
    result.total_salary(6, 7, 0).zero?
  end
  assert do
    result.total_salary(0, 0, 0).zero?
  end
  assert do
    result.total_salary(1, 1, 1) == 1
  end
end
