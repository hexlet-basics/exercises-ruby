# frozen_string_literal: true

require 'test_helper'
require './index'

describe 'function' do
  it 'should works' do
    assert { type_of_type(3) == :simple }
    assert { type_of_type('hexlet') == :simple }
    assert { type_of_type(['hexlet']) == :complex }
    assert { type_of_type(0..42) == :complex }
    assert { type_of_type({ one: 'two' }) == :complex }
  end
end
