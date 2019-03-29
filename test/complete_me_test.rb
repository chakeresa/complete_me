require 'minitest/autorun'
require 'minitest/pride'
require './lib/complete_me'

class CompleteMeTest < Minitest::Test
  def setup
    @completion = CompleteMe.new
    @dictionary = File.read("/usr/share/dict/words")
  end

  def test_it_exists
    assert_instance_of CompleteMe, @completion
  end

  def test_insert_adds_words_and_counts_them
    @completion.insert("pizza")

    assert_equal 1, @completion.count
  end

  def test_suggest_word_from_beginning_of_word
    @completion.insert("pizza")
    @completion.insert("pizza pie")

    assert_equal ["pizza", "pizza pie"], @completion.suggest("piz")
  end

  def test_populate_adds_dictionary_from_file
    @completion.populate(@dictionary)

    assert_equal 235886, @completion.count
    assert_equal ["pize", "pizza", "pizzeria", "pizzicato", "pizzle"], @completion.suggest("piz")
  end
end
