Реализуйте функцию `setup_env()`.

Функция принимает: ключ, хеш и блок который тоже принимает два параметра: хеш и ключ из параметров функции.

Если переданного ключа нет в хеше, то вызываем блок и передаем в него параметры: хеш и ключ, в результате функция должна вернуть обработанный хеш.

Eсли ключ присутствует, то функция должна вернуть хеш в неизменном виде.

```ruby
env = { api_key: 123 }
setup_env(:host, env) { |env, key|  env[key] = 'localhost' } # -> { api_key: 123, host: 'localhost' }
setup_env(:api_key, env) { |env, key|  env[key] = 'localhost' } # -> { api_key: 123 }
env == { api_key: 123 } # -> true
```

Функция не должна мутировать исходный объект.
