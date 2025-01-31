# frozen_string_literal: true

require 'active_support/all'
require 'test_helper'

describe 'function' do
  it 'should works' do
    puts "current time: #{Time.now}"
    date = 1.day.ago - 1.week + 3.hours
    r = Regexp.new(date.year.to_s, Regexp::MULTILINE)
    _(-> { require_relative 'index' }).must_output(r)
    puts date
  end
end
