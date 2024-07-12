
В работе над массивами есть особый набор операций, который пришёл к нам из математики – это операции над множествами. В Ruby для такого случая есть специальные операторы, близкие к их математическим эквивалентам.

Представьте себе задачу поиска взаимных друзей пользователей. Для формирования такого списка на уровне кода, нужно сравнить два массива (мои друзья и друзья друга) и найти пересечение, то есть общих друзей. В данном случае массивы с друзьями — это множества, а операция поиска общих элементов – пересечение (intersection).

Пересечение на Ruby выглядит так:

```ruby
friends1 = ['igor', 'anna', 'nina', 'sergey']
friends2 = ['igor', 'petya', 'inna', 'anna']

# Выглядит как побитовое И, но это пересечение
friends1 & friends2 # ["igor", "anna"]
# или
# friends1.intersection(friends2)
```

Такой оператор очень удобен своей естественностью. Сразу понятно, о чём идёт речь. Как и в большинстве других операторов в Ruby, мы имеем дело с вызовами методов:

```ruby
friends.&(friends2)
```

Подобная схема позволяет не только переопределять их поведение, но и комбинировать операторы между собой:

```ruby
friends = ['anna', 'ivan']
friends1 & friends2 & friends # ["anna"]
```

У множеств и массивов с точки зрения математики есть одно принципиальное отличие, о котором нужно помнить. Во множествах каждый элемент представлен ровно один раз (то есть все элементы — уникальны), в то время как в массивах такого ограничения не существует. Операции над множествами рассматривают массивы не как массивы, а именно как множества. Они удаляют дубли в результирующем массиве:

```ruby
[1, 3, 4] & [1, 3, 3, 8] # [1, 3]
```

*Объединение*

Множество, объединяющее в себе элементы исходных множеств.

```ruby
 [1, 3, 4] | [1, 3, 3, 8]
 # [1, 3, 4, 8]
```

*Дополнение*

Множество, состоящее из элементов первого множества, за минусом элементов, совпадающих со вторым множеством. Или по простому — это разница между двумя множествами.

```ruby
# 4 – единственный элемент из первого множества, которого нет во втором
[1, 3, 4] - [1, 3, 3, 8] # [4]
```