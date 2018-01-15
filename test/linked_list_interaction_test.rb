require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/linked_list_interaction"

class LinkedListInteractionTest < Minitest::Test

  def test_linked_list_interaction_exists
    interaction = LinkedListInteraction.new

    assert_instance_of LinkedListInteraction, interaction
  end

  def test_linked_list_interaction_initializes_with_correct_state
    interaction = LinkedListInteraction.new

    assert_equal ["Cello", "Samantha", "Victoria", "Bubbles", "Alex"], interaction.voice
    assert_equal ["150", "175", "125"], interaction.rate
  end

end
