# frozen_string_literal: true

require 'test_helper'
require 'date'
require './index'

describe 'function' do
  it 'should works' do
    today = Date.today
    t = Time.new today.year, today.month, today.day + 1
    puts t
    assert { next_day == t }
  end
end
