
Реализуйте функцию `next_day()`, которая возвращает дату начала следующего дня (12:00 a.m.). Функция должна возвращать объект типа Time.

```ruby
# Дата вызова: 16.12.2020
next_day(); # 2020-12-17 00:00:00 +0000
```

Эту задачу можно реализовать разными способами. Проще всего создать сегодняшнюю дату (`Date.today`), а потом на основе данных из этого объекта создать объект времени.

```ruby
today = Date.today
today.day # день
today.month # месяц
today.year # год
```
