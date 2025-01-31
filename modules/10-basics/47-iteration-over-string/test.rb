# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'function' do
  it 'should works' do
    assert { reverse('hexlet') == 'telxeh' }
    assert { reverse('ruby') == 'ybur' }
  end
end
