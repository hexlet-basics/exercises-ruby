
Реализуйте функцию `merge_all()`, которая принимает на вход любое количество хешей и сливает (мержит) их в один хеш, который возвращается наружу:

```ruby
hash1 = { key: 'value' }
hash2 = { key2: 'value2' }
hash3 = { key3: 'value3', key: 'new value' }
hash = merge_all(hash1, hash2, hash3)
# { key: 'new value', key2: 'value2', key3: 'value3' }
```

## Подсказки

* [merge()](https://ruby-doc.org/core-3.0.0/Hash.html#method-i-merge)
