
В некоторых ситуациях использование `reduce()` лучше заменить на метод `each_with_object()`, который работает похоже, но не требует возврата аккумулятора. В таком случае кода получается меньше, и он чуть проще. Посмотрим на классический пример подсчёта вхождения слов в предложение:

```ruby
sentence = 'hexlet – work harder'
words = sentence.split
result = words.reduce({}) do |acc, word|
  acc[word] ||= 0
  acc[word] += 1
  acc # <= возврат
end
```

И то же самое с `each_with_object()`:

```ruby
sentence = 'hexlet – work harder'
words = sentence.split ' '
result = words.each_with_object({}) do |word, acc|
  acc[word] ||= 0
  acc[word] += 1
end
```

Не сказать, что код изменился кардинально, но всё же упростился. Этот метод встречается в разработке достаточно часто и, более того, рекомендуется линтером в тех случаях, где он может заменить свёртку.
