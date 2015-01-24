# implement a queue with a linked_list in ruby

require_relative "linked_list"

class Queue
  attr_accessor :queue

  def initialize
    @queue = LinkedList.new
  end

  def enqueue(value)
    @queue.insert_last(value)
  end

  def dequeue
    value = peek
    @queue.remove_first
    value
  end

  def peek
    @queue.head.value if @queue.head
  end

  def empty?
    @queue.size == 0
  end
end


a = Queue.new
a.enqueue("1")
a.enqueue("2")
p a



