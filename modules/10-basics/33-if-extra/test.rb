# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'function' do
  it 'should works' do
    assert { get_sentence_tone('WOW') == 'scream' }
    assert { get_sentence_tone('WOw') == 'general' }
    assert { get_sentence_tone('Hexlet') == 'general' }
  end
end
