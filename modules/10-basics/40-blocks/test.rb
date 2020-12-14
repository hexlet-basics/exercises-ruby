# frozen_string_literal: true

require 'test_helper'
require './index'

describe 'function' do
  it 'should works 1' do
    output = /3\n2\n1/
    assert_output(output) do
      show_me_numbers(3)
    end
  end

  it 'should works 1' do
    output = /4\n3\n2\n1/
    assert_output(output) do
      show_me_numbers(4)
    end
  end
end
