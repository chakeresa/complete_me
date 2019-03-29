class CompleteMe

  def initialize
    @all_words = []
  end

  def insert(word)
    # need to actually implement trie
    @all_words << word
  end

  def count
    @all_words.count
  end

  def suggest(start_of_word)
    # need to actually implement trie
    @all_words.find_all do |dictionary_word|
      dictionary_word.start_with?(start_of_word)
    end
  end

  def populate(dictionary)
    dictionary_ary = dictionary.split("\n")

    dictionary_ary.each do |word|
      insert(word)
    end

    true
  end
end
