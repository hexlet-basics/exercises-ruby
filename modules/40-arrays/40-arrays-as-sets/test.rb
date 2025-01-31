# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'function' do
  it 'should works' do
    actual = gen_diff(
      { one: 'eon', two: 'two', four: true },
      { two: 'own', zero: 4, four: true }
    )

    expected = {
      one: 'deleted',
      two: 'changed',
      four: 'unchanged',
      zero: 'added'
    }

    assert { actual == expected }
  end
end
