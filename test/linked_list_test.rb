require "minitest/autorun"
require "pry"
require "./lib/linked_list"

class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_linked_list_append_can_create_nodes
    list = LinkedList.new

    list.append("We")

    assert_instance_of Node, list.head
    assert_equal "We", list.head.data
    assert_nil list.head.next_node
  end

  def test_linked_list_count_is_accurate
    list = LinkedList.new

    list.append("We")

    assert_equal 1, list.count
    assert_nil list.head.next_node

    list.append("Wer")
    list.append("Were")
    list.append("Weres")

    assert_equal 4, list.count
    assert_equal "Wer", list.head.next_node.data
  end

  def test_linked_list_to_string_returns_a_string_of_all_data
    list = LinkedList.new

    list.append("We")
    list.append("Wer")
    list.append("Were")
    list.append("Weres")

    assert_equal "We Wer Were Weres", list.to_string
  end

end
