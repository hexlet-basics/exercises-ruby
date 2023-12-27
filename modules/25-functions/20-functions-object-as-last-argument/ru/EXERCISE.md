
Реализуйте функцию `link_to()`, которая генерирует html-ссылки. Функция принимает на вход три параметра:

* Текст ссылки
* Сама ссылка
* Хеш с атрибутами (не обязательный)

```ruby
link_to 'name', '/url'
# <a href="/url">name</a>

link_to 'name', '/url', class: 'link'
# <a href="/url" class="link">name</a>
```
