
Hash — тип данных, предназначенный для хранения пар *ключ-значение*. Порядок ключей в хеше определен и совпадает с порядком их добавления.

```ruby
options = {}
# При таком определении ключ становится символом (symbol)
options = { key: 'value' }
options[:key] # 'value'

# При таком определении ключ становится строкой (string)
options = { 'key' => 'value' }

# Добавление/замена в хешах
options[:where] = 'code-basics'
options[:who] = 'hexlet'

options.any? # true
options.empty? # false

# Возвращает ключи
options.keys # ['key', :where, :who]

# Возвращает значения
options.values # ['value', 'code-basics', 'hexlet']

# Обращение к несуществующему элементу возвращает nil
options[:language] # nil

# Доступ к вложенным структурам без необходимости проверок
options.dig(:key1, :key2, :key3)

# Если ключа нет, то будет брошено исключение
options.fetch(:key) # KeyError (key not found: :key)

# Если ключа нет, то вернётся значение по умолчанию
options.fetch(:key, 'default value')
```

```ruby
# Проверка наличия ключа
options.key?('who') # false
options.key?(:who) # true
```

Хеши в Ruby передаются по ссылке, но сравнение происходит по значению, как и в массивах.

```ruby
options1 = { language: 'ruby' }
options2 = { language: 'ruby' }
options1 == options2 # true
```

У хешей, как и у массивов, огромное количество различных методов на все случаи жизни — включая обход и разнообразные функции высшего порядка. Частично мы их коснемся дальше, но основная часть познается уже в повседневной работе.
