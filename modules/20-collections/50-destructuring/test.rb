# frozen_string_literal: true

require 'test_helper'
require_relative './index'

describe 'function' do
  it 'should works' do
    data = [
      %w[ruby dynamic strong],
      %w[js dynamic weak],
      %w[c static weak],
      %w[kotlin static strong]
    ]

    expected = [
      %w[ruby strong],
      %w[js weak],
      %w[c weak],
      %w[kotlin strong]
    ]

    assert { convert(data) == expected }
  end
end
