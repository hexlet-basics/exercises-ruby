# frozen_string_literal: true

require 'test_helper'
require './index'

describe 'function' do
  it 'should works' do
    assert { Number.reverse_int(123) == 321 }
    assert { Number.reverse_int(-34) == -43 }
  end
end
