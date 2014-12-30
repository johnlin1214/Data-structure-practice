class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

class SinglyLinkedList
  def initialize(data)
    @head = Node.new(data)
  end

  def addToEndOfList(data)
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(data)
  end

  def addToFrontOfList(data)
    node = Node.new(data)
    node.next_node = @head
    @head = node
  end
end
