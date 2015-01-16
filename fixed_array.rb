class FixedArray

  attr_reader :size

  def initialize(size)
    @size = size
    @array = Array.new(size)
  end

  def set(element,index)
    out_of_bounds?(index)
    @array[index] = element
  end

  def get(index)
    out_of_bounds?(index)
    @array[index]
  end

  private

  def out_of_bounds?(index)
     raise IndexError, 'Index is not Valid' if index < 0 || index > @array.length - 1
  end
end
