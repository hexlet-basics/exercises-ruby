# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    assert { !even?(1) }
    assert { even?(2) }
    assert { !even?(9) }
  end
end
