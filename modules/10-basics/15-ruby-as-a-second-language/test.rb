# frozen_string_literal: true

require 'test_helper'

describe 'function' do
  it 'should works' do
    _(-> { require './index' }).must_output(/Hello, World!/)
  end
end
