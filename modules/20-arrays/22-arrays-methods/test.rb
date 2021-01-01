# frozen_string_literal: true

require 'test_helper'
require './index'

describe 'function' do
  it 'should works' do
    data = [
      ['usa', 150],
      ['france', 37],
      ['russia', nil]
    ]
    assert { amount_of_cases(data) == 187 }

    data2 = [
      ['moldova', 22],
      ['iraq', 87],
      ['russia', nil]
    ]
    assert { amount_of_cases(data2) == 119 }
  end
end
