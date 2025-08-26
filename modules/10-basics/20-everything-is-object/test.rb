# frozen_string_literal: true

require 'active_support/all'
require 'test_helper'

describe 'output' do
  it 'should works' do
    # Захватываем stdout из index.rb
    out, _err = capture_io do
      require_relative 'index'
    end

    puts out

    methods = out.strip.split("\n")

    assert { methods.size == 5 }

    methods.each do |method|
      assert { "hexlet".respond_to? method }
    end
  end
end
