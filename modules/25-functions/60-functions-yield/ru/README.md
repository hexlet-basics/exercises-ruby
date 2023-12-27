
Написать в Ruby функцию, которая принимает блок, не так страшно, как может показаться на первый взгляд. В самом простом случае нужно знать про одно ключевое слово – `yield`. Именно с его помощью происходит вызов блока:

```ruby
def foo()
  yield
end

# Передача блока, который не принимает аргументов
foo { puts 'code-basics for the brave' }
# => "code-basics for the brave"

# Или так
foo do
  puts 'code-basics for the brave'
end
# => "code-basics for the brave"
```

Как видно из примера выше, мы не управляем блоком явно. `yield` автоматически получает доступ к блоку и вызывает его. Количество вызовов `yield` может быть любым. Каждый вызов работает, как независимый вызов блока:

```ruby
def foo()
  yield
  yield
end

foo { puts 'Hello Hexlet' }
# => "Hello Hexlet"
# => "Hello Hexlet"
```

`yield` можно воспринимать как вызов блока, который во многом ведет себя как обычная функция. Например, если блок возвращает результат, то его же вернет и `yield`.

```ruby
def foo()
  yield
end

# Передача блока, который не принимает аргументов
# Блок возвращает строку
result = foo { 'code-basics for the brave' }
puts result
# => "code-basics for the brave"
```

Если блок содержит параметры, то они передаются в блок через `yield`, как через вызов функции:

```ruby
def foo(value)
  yield(value)
end

# Параметр из определения функции переходит в блок через yield
foo('Hexlet') { |v| puts v }
# => "Hexlet"
```

И, собирая все вместе, так выглядит реализация `map()` внутри:

```ruby
// В виде функции, а не метода
def my_map(coll)
  result = []
  coll.each do |elem|
    result << yield(elem)
  end
  result
end

my_map([1, 2, 3]) { |v| v * 2 }
# [2, 4, 6]
```
