
Реализуйте функцию `valid_date?()`, которая проверяет переданную дату на допустимость по двум критериям:

* Месяц находится между 1 и 12
* День находится между 1 и 31

Дата поступает на вход всегда в формате: *dd-mm-yyyy*. Не используйте функции для работы с датами, реализуйте все с помощью обычных типов данных.

```ruby
valid_date?('11-11-2011') # true
valid_date?('13-11-2011') # true
valid_date?('11-13-2011') # false
valid_date?('55-11-2011') # false
```
