
ООП — отдельная большая тема в Ruby с миллионом своих особенностей. Сейчас мы ещё не готовы её рассматривать плотно, но как минимум нужно знать некоторые базовые конструкции, которые используются широко. В первую очередь речь про классы. Посмотрите на создание даты в Ruby:

```ruby
# Чтобы использовать класс даты, его необходимо подключить
require 'date'

# Именование классов в Ruby соответствует стилю PascalCase,
# что отличает их от функций/методов и переменных
# Ниже вызовы методов

d = Date.today
d.next # возвращает объект следующего дня

# Создаёт дату на сегодняшний день и текущее время
time = Time.new
time.thursday? # false
```

Time — это класс. А сама запись означает: вызвать метод `new()` у класса. `new` в Ruby — не отдельный оператор, а обычный метод. Конечно, не совсем обычный, но синтаксически он ничем не отличается от обычных методов. Такой синтаксис появился не просто так, ниже вы поймете почему. При этом он позволяет проще делать цепочки «по месту»: `Time.new.to_i` (возвращает unixtimestamp). Ещё немного примеров

```ruby
# Создаёт дату на 00:00 10-12-2020
Time.new 2020, 12, 10
```

Как мы помним, конструктор принадлежит не объектам, а самому классу, поэтому он вызывается на классе. Но раз это метод, то что же такое класс? Посмотрите ещё на пару примеров:

```ruby
# now, а не new
time1 = Time.now
time2 = Time.utc # возвращает объект времени в utc
```

Здесь, в зависимости от вашего бэкграунда, ответы могут отличаться друг от друга. Кто-то из PHP скажет, что `now` — статический метод, кто-то скажет, что может быть классов нет, а есть только объекты, как в JavaScript. В Ruby нет статических свойств и методов, и есть реальные классы. Но классы — это объекты, у которых есть свои методы и ... классы.

```ruby
Time.methods.count # 126
Time.class # класс Time — это Class
Time.class.class # а у класса Class класс — это Class :D
Time.superclass # а у класса есть и родитель Object
Time.superclass.class # у которого класс — это Class
Time.superclass.superclass # а родитель родителя — это BasicObject
# и это мы ещё не говорим про классы объектов
# А ещё можно создать класс
Class.new ... # так как класс — это не только объект, но и класс
```

То есть фразу в Ruby «все есть объект» надо понимать практически буквально, но это сильно отличается от того же JavaScript, где под объектом понимается конкретный тип данных object. Объектная модель Ruby наиболее близка языку SmallTalk. С первого взгляда она пугает, но со временем к ней не просто привыкаешь, она становится интуитивной.

Что с этим совсем делать? Пока ничего. Знание того, как работать с классами и как их конструировать, понадобится при взаимодействии с фреймворками и библиотеками. Эта тема рассматривается в самом конце курса, а пока небольшой пример из Rails:

```ruby
# Просто демонстрация на подумать, понимать этот код не нужно
class User < ApplicationRecord # < – наследование
  # Это вызов метода прямо в определении класса
  validates :email, presence: true, uniqueness: true

  # И это вызовы методов
  has_many :companies
  belongs_to :company

  def to_s
    # this/self не нужны
    "#{first_name} #{last_name}"
  end
end
```
