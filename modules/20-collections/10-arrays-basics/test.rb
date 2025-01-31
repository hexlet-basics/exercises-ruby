# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'function' do
  it 'should works' do
    # assert { double(3) == 6 }
    assert { intersection([1, 3, 8], [9, 3, 1]) == [1, 3] }
    assert { intersection([8], [5, 0]) }
  end
end
