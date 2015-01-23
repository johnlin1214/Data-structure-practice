# implement a stack with a linked_list in ruby

require_relative 'linked_list'

class Stack
  attr_accessor :stack

  def initialize
    @stack = LinkedList.new
  end

  def push(value)
    @stack.insert_last(value)
  end

  def pop
    @stack.remove_last
  end

  def empty?
     @stack.size == 0
  end
end
