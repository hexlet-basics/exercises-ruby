# frozen_string_literal: true

require 'test_helper'

describe 'output' do
  it 'should works' do
    out, _err = capture_io do
      require_relative 'index'
    end

    print out

    assert { out == "Hello, World!" }
  end
end
