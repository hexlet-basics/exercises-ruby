
Реализуйте функцию `apply_blocks(data, blocks)`, которая принимает на вход данные и массив блоков. Эта функция должна по цепочке вызывать блоки, передавая туда результат предыдущего вызова блока:

```ruby
proc1 = proc { |x| x + 1 }
proc2 = proc { |x| x * 2 }

apply_blocks(5, [proc1, proc2]) # 12
# proc2.call(proc1.call(5))
apply_blocks(5, [proc2, proc1]) # 11
# proc1.call(proc2.call(5))
```
