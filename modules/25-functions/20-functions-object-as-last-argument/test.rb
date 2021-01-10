# frozen_string_literal: true

require 'test_helper'
require './index'

describe 'function' do
  it 'should works' do
    actual1 = link_to 'name', '/url'
    expected1 = '<a href="/url">name</a>'
    assert { actual1 == expected1 }

    actual2 = link_to 'name', '/url', class: 'link'
    expected2 = '<a href="/url" class="link">name</a>'
    assert { actual2 == expected2 }
  end
end
