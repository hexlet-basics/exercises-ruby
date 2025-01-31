# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'function' do
  it 'should works' do
    proc1 = proc { |x| x + 1 }
    proc2 = proc { |x| x * 2 }

    assert { apply_blocks(5, [proc1, proc2]) == 12 }
    assert { apply_blocks(5, [proc2, proc1]) == 11 }
  end
end
