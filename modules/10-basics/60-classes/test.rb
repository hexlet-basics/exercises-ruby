# frozen_string_literal: true

require 'test_helper'
require 'date'
require_relative './index'

describe 'function' do
  it 'should works' do
    today = Date.today
    tomorrow = today.next
    t = Time.new tomorrow.year, tomorrow.month, tomorrow.day
    puts t
    assert { next_day == t }
  end
end
