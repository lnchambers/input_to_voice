require "minitest/autorun"
require "pry"
require "./lib/node"

class NodeTest < Minitest::Test

  def test_node_exists
    node = Node.new("arg")

    assert_instance_of Node, node
  end

  def test_node_can_hold_data
    node = Node.new("arg")

    assert_equal "arg", node.data
  end

  def test_node_next_node_initializes_as_nil
    node = Node.new("arg")

    assert_nil node.next_node
  end

end
