# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    assert { invert_case('Hello, World!') == 'hELLO, wORLD!' }
    assert { invert_case('I loVe JS') ==  'i LOvE js' }
  end
end
