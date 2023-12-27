В Ruby значения из хеша по ключу извлекает метод `[]` и `fetch()`. В чем же принципиальное отличие между ними?

Если запрашивать значение по несуществующему ключу, метод `[]` молча возвращает `nil`.

```ruby
env = {
  host: 'localhost',
  port: 3000 
}
puts env[:user] # -> nil
```

Метод `fetch()` же действует иначе - если ключа нет, получим ошибку `КеуError`.

```ruby
env = {
  host: 'localhost',
  port: 3000 
}
puts env.fetch(:user) # ->  получим ошибку key not found (KeyError)
```

Но это поведение можно переопределить, так как метод `fetch()` принимает вторым параметром значение по умолчанию:

```ruby
env = {
  host: 'localhost',
  port: 3000 
}
puts env.fetch(:user, nil) # -> nil
puts env.fetch(:user, 'guest') # ->  'guest'
```

И даже блок или лямбда-функцию:

```ruby
env = { host: 'localhost' }

env.fetch(:user) {  |key| env[key] = 'guest' }
puts env # -> { host: 'localhost', user: 'guest' }
```

Пример конфигурации почтовой рассылки из приложения на Ruby on Rails:

```ruby
config.action_mailer.smtp_settings = {
  user_name: ENV.fetch('MAIL_USERNAME', nil),
  password: ENV.fetch('MAIL_PASSWORD', nil),
  address: ENV.fetch('MAIL_HOST', nil),
  domain: ENV.fetch('MAIL_HOST', nil),
  port: ENV.fetch('SMTP_PORT', '25'),
  authentication: :cram_md5
}
```

Ruby style guide советует использовать метод `fetch()` вместо метода `[]`.
