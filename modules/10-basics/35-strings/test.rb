# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'function' do
  it 'should works' do
    card_number1 = '102983470123521'
    assert { prepare_card_for_display(card_number1) == '**3521' }
    card_number1 = '098234'
    assert { prepare_card_for_display(card_number1) == '**8234' }
  end
end
