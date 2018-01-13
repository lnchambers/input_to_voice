require "pry"
require "./lib/node"

class LinkedList

  attr_reader :head,
              :count

  def initialize
    @head   = nil
    @count  = 0
    @result = []
  end

  def append(data, current_node = @head)
    if data.empty?
      return data
    elsif @head.nil?
      @head = Node.new(data[0])
      append(data[1..-1], current_node = @head)
    else
      current_node.next_node = Node.new(data[0])
      append(data[1..-1], current_node.next_node)
    end
  end

  def to_string(current_node = @head)
    @result << current_node.data
    to_string(current_node.next_node) if !current_node.tail?
    @result.join(" ")
  end

end
