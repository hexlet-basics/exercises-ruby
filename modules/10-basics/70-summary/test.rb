# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    assert { happy? 33 }
    assert { !happy? 3833 }
    assert { happy? 123321 }
    assert { happy? 666666 }
    assert { !happy? 123456 }
  end
end
