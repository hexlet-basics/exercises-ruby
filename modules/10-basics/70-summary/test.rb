# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'function' do
  it 'should works' do
    assert { happy? 33 }
    assert { !happy? 3833 }
    assert { happy? 123_321 }
    assert { happy? 666_666 }
    assert { !happy? 123_456 }
  end
end
