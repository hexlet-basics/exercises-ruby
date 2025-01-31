# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'function' do
  it 'should works' do
    assert { compare(1, 1).zero? }
    assert { compare(0, 100) == -1 }
    assert { compare(234, 2) == 1 }
  end
end
