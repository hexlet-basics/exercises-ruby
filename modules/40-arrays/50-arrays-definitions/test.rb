# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    assert { valid_date?('11-11-2011') }
    assert { valid_date?('13-11-2011') }
    assert { !valid_date?('11-13-2011') }
    assert { !valid_date?('55-11-2011') }
  end
end
