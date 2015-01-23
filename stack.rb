# implement a stack with a linked_list in ruby

require_relative 'linked_list'

class Stack
  attr_accessor :stack

  def initialize
    @stack = LinkedList.new
  end

  def push(value)
    @stack.insert_first(value)
  end

  def pop
    value = top
    @stack.remove_first
    value
  end

  def top
    @stack.head.value if @stack.head
  end

  def empty?
     @stack.size == 0
  end
end



