require "./lib/linked_list"
require "./lib/data/word_check"

class LinkedListInteraction
  include WordCheck

  def initialize
    @voice = ["Cello", "Samantha", "Victoria", "Bubbles", "Alex"]
    @rate  = ["150", "175", "125"]
  end

  def play
    loop do
      puts "What would you like me to say?"
      print "> "
      input = gets.chomp.downcase
      break if invalid_input(input)
      append(input)
    end
  end

  def input_verify(input)
    input.split.map do |word|
      if word_check.include? word
        word = "#{safe_words.sample}"
      else
        word
      end
    end
  end

  def append(input)
    list = LinkedList.new
    list.append(input_verify(input))
    say_something(list)
  end

  def say_something(list)
    `say -r #{@rate.sample} -v #{@voice.sample} "#{list.to_string}"`
  end

  def invalid_input(input)
    input == "goodbye" || input == "g" || input == ""
  end

end
