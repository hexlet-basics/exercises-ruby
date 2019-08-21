# frozen_string_literal: true

require 'code_basics'

CodeBasics.execute!(__dir__) do |_stdout, result|
    assert { result.leap?(1600) == true }
    assert { result.leap?(1601) == false }
    assert { result.leap?(1602) == false }
    assert { result.leap?(1603) == false }
    assert { result.leap?(1604) == true }
    assert { result.leap?(1800) == false }
    assert { result.leap?(1900) == false }
    assert { result.leap?(2000) == true }
end
