# frozen_string_literal: true

require 'test_helper'
require './index'

describe 'function' do
  it 'should works' do
    assert { Number.reverseInt(123) == 321 }
    assert { Number.reverseInt(-34) == -43 }
  end
end
