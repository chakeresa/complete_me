# CompleteMe

http://backend.turing.io/module1/projects/complete_me

## Iteration 1
```ruby
require "./lib/complete_me"

completion = CompleteMe.new

completion.insert("pizza")

completion.count
=> 1

completion.suggest("piz")
=> ["pizza"]

dictionary = File.read("/usr/share/dict/words")

completion.populate(dictionary)

completion.count
=> 235886

completion.suggest("piz")
=> ["pize", "pizza", "pizzeria", "pizzicato", "pizzle", ...]
```

## Iteration 2
