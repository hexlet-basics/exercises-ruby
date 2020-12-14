# frozen_string_literal: true

require 'test_helper'

describe 'output' do
  it 'should works' do
    _(-> { require './index.rb' }).must_output(/Hello, World!/)
  end
end
