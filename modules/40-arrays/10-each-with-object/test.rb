# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    sentence = 'hexlet helps people to become developers'
    actual = words_by_letters(sentence)
    expected = {
      'b' => ['become'],
      'd' => ['developers'],
      'h' => %w[helps hexlet],
      'p' => ['people'],
      't' => ['to']
    }
    assert { actual == expected }
    assert { actual.keys == expected.keys }
  end
end
