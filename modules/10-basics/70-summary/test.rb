# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    assert { happy? 33 }
    assert { !happy? 3833 }
  end
end
