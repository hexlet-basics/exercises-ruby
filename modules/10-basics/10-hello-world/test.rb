# frozen_string_literal: true

require 'test_helper'

describe 'output' do
  it 'should works' do
    out, _err = capture_io do
      require_relative 'index'
    end

    result = out.strip

    assert { result == "Hello, World!" }
  end
end
