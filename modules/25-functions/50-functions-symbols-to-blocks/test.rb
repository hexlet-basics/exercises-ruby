# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    strings = ['wow?', 'One?', 'tWo!', 'THREE']
    assert { convert(strings) == ['one?', 'wow?'] }
  end
end
