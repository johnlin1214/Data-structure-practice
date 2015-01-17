require_relative "fixed_array"

class ArrayList
  attr_accessor :size

  def initialize(size)
    @list = FixedArray.new(size)
    @size = @list.size
  end

  def add(element)
    last_index = @size
    increase_array_size_by_one
    @list.set(element, last_index)
  end

  def get(index)
    @list.get(index) unless index < 0 || index >= @size
  end

  def set(element, index)
    increase_size_to_new_index(index) if index >= @size
    @list.set(element, index)
  end

  def insert(element, index)

  end

  private

  def increase_array_size_by_one
    old_list = @list
    @list =  FixedArray.new(@size + 1)
    @size = @list.size
    transfer_elements_into_new_array(old_list, @list)
  end

  def increase_size_to_new_index(index)
    old_list = @list
    @list = FixedArray.new(index+1)
    @size = @list.size
    transfer_elements_into_new_array(old_list, @list)
  end

  def transfer_elements_into_new_array(old_list, new_list)
    old_list.size.times do |index|
      new_list.set(old_list.get(index),index)
    end
  end
end

# ArrayList#new(size): Instantiate a new dynamic array with initial size size. Return the list
# ArrayList#add(element): Add element to the end of the list. Return the element added.
# ArrayList#get(index): Retrieve an element at index
# ArrayList#set(index, element): Replace an existing element at index. Return the element
# ArrayList#size: Return the size of the list
