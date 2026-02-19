# frozen_string_literal: true

require 'active_support/all'
require 'test_helper'

describe 'output' do
  it 'should works' do
    # Захватываем stdout из index.rb
    out, _err = capture_io do
      require_relative 'index'
    end

    puts "Current time:"
    puts Time.now
    puts "Captured time output:"
    puts out

    # Вычисляем ожидаемую дату
    date = 1.day.ago - 1.week + 3.hours

    # Приводим вывод к строке без лишних переводов строки
    out_str = out.strip

    # Убираем миллисекунды, сравниваем только по секундам
    expected = date.change(usec: 0).to_s

    # Power Assert проверка
    assert { out_str == expected }
  end
end
