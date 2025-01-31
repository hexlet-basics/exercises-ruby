# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'function' do
  it 'should works' do
    assert { double(3) == 6 }
    assert { double(0).zero? }
    assert { double(2) == 4 }
  end
end
