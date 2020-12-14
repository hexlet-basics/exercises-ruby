# frozen_string_literal: true

require 'test_helper'
require './index'

describe 'function' do
  it 'should works' do
    assert { average(1, 3) == 2.0 }
    assert { average(10, 15) == 12.5 }
  end
end
