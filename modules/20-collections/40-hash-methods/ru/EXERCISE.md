
Реализуйте функцию `plainify`, которая принимает на вход список песен сгруппированных по имени группы и возвращает плоский список песен, удобный для вывода на экран.

```ruby
  data = {
    'Queen' => [
      'Bohemian Rhapsody',
      "Don't Stop Me Now"
    ],
    'Metallica' => [
      'Nothing Else Matters'
    ],
    "Guns N' Roses" => [
      'Paradise City',
      'November Rain'
    ],
    'AC/DC' => [
      'Thunderstruck',
      'Back In Black',
      'Shoot to Thrill'
    ]
  }

result = plainify data

# [
#   { band: 'Queen', song: 'Bohemian Rhapsody' },
#   { band: 'Queen', song: "Don't Stop Me Now" },
#   { band: 'Metallica', song: 'Nothing Else Matters' },
#   { band: "Guns N' Roses", song: 'Paradise City' },
#   { band: "Guns N' Roses", song: 'November Rain' },
#   { band: 'AC/DC', song: 'Thunderstruck' },
#   { band: 'AC/DC', song: 'Back In Black' },
#   { band: 'AC/DC', song: 'Shoot to Thrill' }
# ]
```
