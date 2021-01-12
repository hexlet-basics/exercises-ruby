# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    assert { my_filter([1, 2], &:even?) == [2] }
    assert { my_filter([1, 2, 3, 4], &:even?) == [2, 4] }
    assert { my_filter([1, 2, 3, 4], &:odd?) == [1, 3] }
  end
end
