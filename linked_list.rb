require_relative "node"

class LinkedList
  attr_reader :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def insert_first(element)
    old_node = @head
    new_node = Node.new(element)
    @head = new_node
    new_node.pointer = old_node
    @size += 1
  end

  def remove_first
    if @head
      @head = @head.pointer
      @size -= 1
    end
  end

  def insert_last(element)
    @size += 1
    new_node = Node.new(element)
    return @head = new_node if @head == nil
    last_node = tail
    last_node.pointer = new_node
  end

  def remove_last
    return @head = nil if @head.pointer == nil
    current_node = @head

    until current_node.pointer.pointer == nil
      p current_node = current_node.pointer
    end

    current_node.pointer = nil
    @size -= 1
  end

  def get(index)
    out_of_bounds_index?(index)
    current_node = @head
    index_counter = 0

    until index_counter == index
      current_node = current_node.pointer
      index_counter += 1
    end

    current_node.value
  end

  def set(index, element)
    out_of_bounds_index?(index)
    current_node = @head
    index_counter = 0

    until index_counter == index
      current_node = current_node.pointer
      index_counter += 1
    end

    current_node.value = element
  end

  def tail
    current_node = @head
    until current_node.pointer == nil
      current_node = current_node.pointer
    end
    current_node
  end

  private

  def out_of_bounds_index?(index)
    raise IndexError, 'Index is not Valid' if index < 0 || index >= @size
  end

end






