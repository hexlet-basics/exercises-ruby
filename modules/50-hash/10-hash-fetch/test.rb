# frozen_string_literal: true

require 'test_helper'
require_relative 'index'

describe 'test setup_env' do
  it 'should works' do
    env = { api_key: 123 }
    no_key = setup_env(
      :host,
      env
    ) { |config, key| config[key] = 'localhost' }

    expected = { api_key: 123, host: 'localhost' }

    assert { no_key == expected }
    assert { env == { api_key: 123 } }
  end
end
