# frozen_string_literal: true

require 'test_helper'
require './index'

describe 'function' do
  data1 = [
    ['11-9-2020', 'russia', 10_000],
    ['11-10-2020', 'usa', 35_000],
    ['13-12-2020', 'india', 55_000],
    ['12-11-2020', 'russia', 13_000],
    ['12-12-2020', 'usa', 22_000],
    ['11-12-2020', 'india', 54_000]
  ]

  it 'should works' do
    expected1 = [
      ['13-12-2020', 'india', 55_000],
      ['12-12-2020', 'usa', 22_000],
      ['11-12-2020', 'india', 54_000],
      ['12-11-2020', 'russia', 13_000],
      ['11-10-2020', 'usa', 35_000],
      ['11-9-2020', 'russia', 10_000]
    ]

    actual1 = sort_cases(data1)
    assert { actual1 == expected1 }
  end
end
