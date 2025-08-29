# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'check_number' do
  it 'should work' do
    assert { check_number(3) == 'positive' }
    assert { check_number(10) == 'positive' }
    assert { check_number(-1) == 'negative' }
    assert { check_number(-5) == 'negative' }
    assert { check_number(0) == 'zero' }
  end
end
