
Destructuring – синтаксический сахар для разложения составных данных на элементы. Удобная возможность языка, которая повышает читабельность кода, и немного сокращает его количество. Пример:

```ruby
data = ['hexlet', 'online courses', topics: ['php', 'js']]
name, description, topics = data
puts name # "hexlet"
puts description # "online courses"
puts topics # { topics: ["php", "js"] }

# Обычный способ
# name = data[0] либо data.first
# description = data[1]
# topics = data[2] либо data.last
```

Имена переменных `name` и `description` могут быть любыми, на деструктуризацию это не влияет. Стоит запомнить, что для деструктуризации вложенных массивов нам нужно знать либо количество элементов в массиве, либо пропустить их, чтобы не получить исключение. Пример:

```ruby
data = ['hexlet', 'online courses', ['php', 'js']]
# для доступа ко вложенному массиву используются круглые скобки
name, description, (first_topic, second_topic) = data # учли количество элементов

# _ – используется, когда значение не важно
_, _, (first_topic, _) = data # так же все элементы учтены

# * – указывает, что нам не важны все значения
*, (_, second_topic) = data # пропустили элементы в первом массиве, во вложенном количество учтено

# данный пример вызовет исключение: не учли количество элементов
name, description, (first_topic) = data # Error
```

Часто деструктуризацию используют для отделения первого (или первых) элемента от остальных. Для этого используется *splat-оператор* – \*.

```ruby
data = ['hexlet', 'online courses', ['php', 'js']]
name, *rest = data
puts rest # ["online courses", ["php", "js"]]

# В любом месте
name, *rest, topic = data
puts rest # ["online courses"]
```

Деструктуризация, к сожалению, не работает для хешей. Однако можно немного схитрить и получить похожую функциональность:

```ruby
data = {
  name: 'hexlet',
  description: 'online courses',
  topic: 'programming'
}

# values_at возвращает массив из значений для указанных ключей
name, description = data.values_at(:name, :description)
```

Деструктуризация может применяться везде, включая параметры функций и блоков:

```ruby
# разложен первый аргумент
# обязательны скобки
def process((name, *rest))
  # логика
end

data = ['hexlet', 'online courses', 'programming']
process(data)
```
