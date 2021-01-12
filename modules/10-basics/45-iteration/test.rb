# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    assert { (average(1, 3) - 2.0).abs < Float::EPSILON }
    assert { (average(10, 15) - 12.5).abs < Float::EPSILON }
  end
end
