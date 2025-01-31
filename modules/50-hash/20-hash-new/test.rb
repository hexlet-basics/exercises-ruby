# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'get_adjacency_matrix' do
  it 'should works' do
    collection = [
      %w[Vasy Pety],
      %w[Vasy Oksana],
      %w[Vasy Egor],
      %w[Egor Pety],
      %w[Egor Georgiy],
      %w[Oksana Andrey]
    ]

    expected = {
      Vasy: %w[Pety Oksana Egor],
      Egor: %w[Pety Georgiy],
      Oksana: ['Andrey']
    }

    assert { get_adjacency_matrix(collection) == expected }
  end
end
