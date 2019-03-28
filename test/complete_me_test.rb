# require "./lib/complete_me"
#
# completion = CompleteMe.new
#
# completion.insert("pizza")
#
# completion.count
# => 1
#
# completion.suggest("piz")
# => ["pizza"]
#
# dictionary = File.read("/usr/share/dict/words")
#
# completion.populate(dictionary)
#
# completion.count
# => 235886
#
# completion.suggest("piz")
# => ["pize", "pizza", "pizzeria", "pizzicato", "pizzle", ...]

require 'minitest/autorun'
require 'minitest/pride'
require './lib/complete_me'

class CompleteMeTest < Minitest::Test
end
