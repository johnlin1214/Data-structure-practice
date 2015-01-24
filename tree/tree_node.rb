class TreeNode
  attr_accessor :value, :childern

  def initialize(value)
    @value = value
    @childern = []
  end

  def add_child(child)
    @childern.push(child)
  end
end
