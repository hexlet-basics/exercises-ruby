# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'output' do
  it 'should works' do
    out, _err = capture_io do
      show_me_numbers(3)
    end

    puts out

    assert { out == "3\n2\n1\n" }

    out2, _err = capture_io do
      show_me_numbers(4)
    end

    puts out2

    assert { out2 == "4\n3\n2\n1\n" }
  end
end
