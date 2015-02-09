class TreeListNode
  attr_accessor :right, :left, :value

  def initialize value
    @value = value
    @left, @right = nil
  end
end
