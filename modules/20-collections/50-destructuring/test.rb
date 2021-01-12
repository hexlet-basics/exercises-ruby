# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    data = [
      ['ruby', 'dynamic', 'strong'],
      ['js', 'dynamic', 'weak'],
      ['c', 'static', 'weak'],
      ['kotlin', 'static', 'strong']
    ]

    expected = [
      ['ruby', 'strong'],
      ['js', 'weak'],
      ['c', 'weak'],
      ['kotlin', 'strong']
    ]

    assert { convert(data) == expected }
  end
end
