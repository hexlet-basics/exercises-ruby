# frozen_string_literal: true

require 'test_helper'

describe 'output' do
  it 'should works' do
    _(-> { require_relative './index' }).must_output(/Hello, World!/)
    puts 'Hello, World!'
  end
end
