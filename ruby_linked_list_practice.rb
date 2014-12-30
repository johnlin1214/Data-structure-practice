# Implementation of a singly linked list in ruby.

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

  def find_data_point(data_point)
    current = @head
    node_count = 0
    while current != nil do
      node_count += 1
      return "#{data_point} found at the #{node_count} node" if current.data == data_point
      current = current.next_node
    end
    puts "#{data_point} not found in list."
  end

  def delete(data_point)
    @head = @head.next_node if @head.data == data_point # case where data_point is the first note
    current_node = @head.next_node
    previous_node = @head
    while current_node != nil do
        if current_node.data == data_point
          previous_node.next_node = current_node.next_node
          return "#{data_point} deleted"
        end
        previous_node = current_node
        current_node = current_node.next_node
    end
    puts "#{data_point} not found in list."
  end

  def get(index) # find the node at index
    unless outOfBounds?(index)
      current_index = 1
      current = @head
      return current if index == 1
      while current.next_node != nil do
        current = current.next_node
        current_index += 1
        return current if current_index == index
      end
    end
  end

  def sizeOfLinkedList
    current = @head
    size_count = 1
    until current.next_node == nil
      size_count += 1
      current = current.next_node
    end
    size_count
  end

  def outOfBounds?(index)
    raise IndexError if index < 1 || index > sizeOfLinkedList
  end

  def set(index, data_point) # sets a node's value at a specific index
    unless outOfBounds?(index)
      current_index = 1
      current_node = @head
      until current_index == index
        current_node = current_node.next_node
        current_index += 1
      end
      current_node.data = data_point
    end
  end

  def insert(index, data_point) # inserts a node at a specific index
     unless outOfBounds?(index)
      current_index = 1
      current_node = @head
      until current_index == index do
        previous_node = current_node
        current_node = current_node.next_node
        current_index += 1
      end
       newNode = Node.new(data_point)
       previous_node.next_node = newNode
       newNode.next_node = current_node
     end
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
list.display_linked_list # 1->10->20->30
puts list.sizeOfLinkedList # 4
puts list.get(1) # <Node:0x007f90d40888a8>
puts list.find_data_point(10) # 10 found at the 2 node
puts list.find_data_point(100) # 100 not found in list.
puts list.delete(20) # 20 deleted
puts list.delete(100) # 100 not found in list.
list.display_linked_list # 1->10->30
list.set(2,15) # 1->15->30
list.insert(2,20) # 1->20->15->30


