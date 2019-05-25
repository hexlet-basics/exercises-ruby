# frozen_string_literal: true

require 'code_basics'

CodeBasics.execute!(__dir__) do |_stdout, result|
  assert do
    result.build_sms_message('Сергей', 'Константинопольский', 13, '331233') == 'К вам выехали по заказу ***233. Приедем через 13 мин. Бригадир Константинопольский С.'
  end
  assert do
    result.build_sms_message('Анна', 'Масляная', 31.5, '124422') == 'К вам выехали по заказу ***422. Приедем через 31.5 мин. Бригадир Масляная А.'
  end
end
