В этом уроке мы познакомимся с альтернативными способами создания хеша.

Вспомним как создавать хеш через литерал:

```ruby
env = {} # пустой хеш
env = { host: 'example.com' }
```

В Ruby имеется альтернативный способ создания хеша, через вызов метода `new()` у объекта `Hash`:

```ruby
env = Hash.new # создали пустой хеш
puts(env[:host]) # -> nil
```
Такой способ имеет некоторые преимущества, давайте посмотрим какие:

```ruby
env = Hash.new('localhost')
puts(env[:user]) # -> 'localhost'
```

Мы передаем в метод `new()` значение localhost, если мы обратимся к несуществующему ключу, то метод `[]` вернет это значение:

Такое поведение не распространяется на метод `fetch()`:

```ruby
env = Hash.new('localhost')
puts(env.fetch(:host)) # -> key not found: :host (KeyError)
```
Как вы видите, так же будет ошибка: KeyError.

Где же хранится значение по умолчанию? Это можно посмотреть вызвать метод `inspect()` видно, что значение не является частью хеша, а является частью экземпляра класса Hash:

```ruby
env = Hash.new('localhost')
puts(env.inspect) # -> {}
```

`Hash.new` может принимать блок кода, который также позволяет задавать ключам значение по умолчанию. Таким образом нам не надо проверять существует ключ или нет:

```ruby
dependencies = Hash.new { |h, key| h[key] = [] }
dependencies[:simple_form] << 'simple_form_bootstrap'
puts(dependencies[:simple_form]) # -> ['simple_form_bootstrap']
```
Так же значение по умолчанию можно задавать через метод `default()`:

```ruby
env = Hash.new('localhost')
puts(env[:host]) # -> localhost
env.default = 'example.com'
puts(env[:host]) # -> example.com
```
В этом уроке мы научились создавать хеш альтернативным способом через `Hash.new`. Это бывает полезно когда нам надо инициализировать ключи значением по умолчанию.
