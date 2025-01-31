# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'function' do
  it 'should works' do
    assert { MyNumber.reverse_int(123) == 321 }
    assert { MyNumber.reverse_int(-34) == -43 }
  end
end
