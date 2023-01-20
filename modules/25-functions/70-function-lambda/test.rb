# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'if_logic' do
  it 'should works' do
    assert { if_logic(TRUE_LOGIC).call('one').call('two') == 'one' }
    assert { if_logic(FALSE_LOGIC).call('one').call('two') == 'two' }
  end
end
