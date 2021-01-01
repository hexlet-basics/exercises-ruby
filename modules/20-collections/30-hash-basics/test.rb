# frozen_string_literal: true

require 'test_helper'
require './index'

describe 'function' do
  it 'should works' do
    text = 'php ruby php java javascript go go go'
    expected = {
      'php' => 2,
      'ruby' => 1,
      'java' => 1,
      'javascript' => 1,
      'go' => 3
    }
    assert { get_words_count_by_lang(text) == expected }
  end
end
