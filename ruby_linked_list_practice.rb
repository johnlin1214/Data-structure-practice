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

  def find(search_data)
    current = @head
    node_count = 0
    while current.next_node != nil do
      node_count += 1
      return "#{search_data} found at the #{node_count} node" if current.data == search_data
      current = current.next_node
    end
    puts "#{search_data} not found in list."
  end

  def delete

  end

  def display_linked_list
    current = @head
    linked_list_data = []
    while current.next_node != nil do
      linked_list_data << current.data
      current = current.next_node
    end
    linked_list_data << current.data
    puts linked_list_data.join("->")
  end
end

list = SinglyLinkedList.new(10)
list.addToEndOfList(20)
list.addToEndOfList(30)
list.addToFrontOfList(1)
list.display_linked_list
puts list.find(11)






