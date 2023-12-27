
Условия в Ruby выглядят похожими на условия в других языках:

```ruby
def sentence_type(text)
  # проверяем последний символ в строке
  if text.end_with?('?')
    'question' # снова нет return
  elsif text.end_with?('!')
    'exclamation' # и тут
  else
    'statement' # и тут
  end
end

sentence_type 'anybody here?' # question
sentence_type 'Hexlet for humans' # statement
sentence_type 'boo!' # exclamation
```

В Ruby условиям не нужны скобки. Выражения пишутся сразу после ключевого слова `if`. Для дополнительных условий используется ключевое словое `elsif`. И для всего остального — привычный `else`. В конце добавляется `end`.

В примере используется предикат (функция, возвращающая `true` или `false`) `end_with?()`. Ключевое отличие Ruby от других популярных языков — в использовании знака вопроса на конце, вместо `is` и его аналогов в начале. Этот подход перекочевал из Lisp-языков.
