# frozen_string_literal: true

require 'test_helper'

class Test < Minitest::Test
  def test_index
    assert_output(/Hello, World!/) do
      require './index.rb'
    end
  end
end
