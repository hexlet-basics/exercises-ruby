# frozen_string_literal: true

require 'test_helper'
require './index'

describe 'function' do
  it 'should works' do
    data = {
      'Queen' => [
        'Bohemian Rhapsody',
        "Don't Stop Me Now"
      ],
      'Mettallica' => [
        'Nothing Else Matters'
      ],
      "Guns N' Roses" => [
        'Paradise City',
        'November Rain'
      ],
      'AC/DC' => [
        'Thunderstruck',
        'Back In Black',
        'Shoot to Thrill'
      ]
    }
    expected = [
      ['Queen', 'Bohemian Rhapsody'],
      ['Queen', "Don't Stop Me Now"],
      ['Metallica', 'Nothing Else Matters'],
      ["Guns N' Roses", 'Paradise City'],
      ["Guns N' Roses", 'November Rain'],
      ['AC/DC', 'Thunderstruck'],
      ['AC/DC', 'Back In Black'],
      ['AC/DC', 'Shoot to Thrill']
    ]

    assert { plainify(data) == expected }
  end
end
