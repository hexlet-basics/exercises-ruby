
Как и у массивов, базовый метод обработки хешей это `each` (или алиас `each_pair`). Он принимает на вход блок, в который передаются и ключ, и значение:

```ruby
data = {
  clojure: 'dynamic',
  go: 'static',
  kotlin: 'static'
}

data.each do |key, value|
  # логика
end
```

С его помощью можно выполнить любую задачу по преообразованию хеша, но в каждой конкретной ситуации лучше пользоваться специализированными функциями, которые позволяют сократить код и сделать его понятнее.

**[transform_values](https://ruby-doc.org/core-3.0.0/Hash.html#method-i-transform_values)**

Этот метод позволяет преобразовать значения, оставив ключи. На выходе получается новый хеш:

```ruby
new_data = data.transform_values { |value| value.upcase }
# { clojure: "DYNAMIC", go: "STATIC", kotlin: "STATIC" }
```

С помощью этого метода можно даже поменять тип значений и сделать их, например, массивами. Точно такой же метод есть и для ключей: [transform_keys](https://ruby-doc.org/core-3.0.0/Hash.html#method-i-transform_keys).

**[slice](https://ruby-doc.org/core-3.0.0/Hash.html#method-i-slice)**

Слайс позволяет извлечь из хеша только его часть по указанным ключам:

```ruby
data.slice(:clojure, :go)
# { clojure: "dynamic", go: "static" }
```

**[select](https://ruby-doc.org/core-3.0.0/Hash.html#method-i-select)**

Для более сложных ситуаций подходит метод `select` — он действует как фильтр и извлекает из хеша его часть, которая соответствует нужным условиям:

```ruby
data.select { |key, value| value == 'static' }
# { go: "static", kotlin: "static" }
```

**[empty?](https://apidock.com/ruby/Hash/empty%3F)**

**[key?](https://apidock.com/ruby/DBM/key%3F)**

Иногда бывает полезно проверить хеш на пустоту, за это отвечает метод `empty?` и проверить в хеше наличие ключа - это метод `key?`:

```ruby
data.empty? # false
data.clear # метод clear очищает хеш
data.empty? # true

data.key? :go # true
```

Важно понимать, что если мы в качестве ключа передадим строку 'go' методу `key?`, то метод вернет `false`.

**[merge](https://apidock.com/ruby/Hash/merge)**

Метод `merge` позволяет объединить два хеша. Если в целевом хеше обнаружен дубликат, то он будет перезаписан:

```ruby
with_ruby = data.merge(ruby:'dynamic')
puts whith_ruby 
# => { clojure: "dynamic", go: "static", kotlin: "static", ruby: "dynamic" }
new_hash = data.merge(go:'compiled')
puts new_hash
# => { clojure: "dynamic", go: "compiled", kotlin: "static", ruby: "dynamic" }
```

`merge` может принимать блок, который можно использовать например для устранения коллизий:

```ruby
data = { password: '123456' }
new_data = { password: '123' }
data.merge(new_data) do |key, old_password, new_password| 
  new_password.length >= 6 ? new_password : old_password
end
```

В Ruby для работы с хешами есть методы на все случаи жизни, поэтому почаще заглядывайте в документацию и экспериментируйте.
