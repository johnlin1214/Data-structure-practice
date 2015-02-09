require_relative 'tree_list_node'

class TreeList
  attr_reader :root

  def initialize
    @root = nil
  end

  def add (element, current_node = @root)
    return @root = TreeListNode.new(element) if @root == nil

    if element < current_node.value
      if current_node.left
        add(element, current_node = current_node.left)
      else
        current_node.left = TreeListNode.new(element)
      end
    else
      if current_node.right
        add(element, current_node = current_node.right)
      else
        current_node.right = TreeListNode.new(element)
      end
   end
 end

  def find(value)
    each { |element| return true if element == value }
    false
  end

  def each(node = @root, &block)
    each(node = node.left, &block) if node.left
    block.call(node.value)
    each(node = node.right, &block) if node.right
  end

end

list = TreeList.new
list.add(10)
list.add(8)
list.add(5)
list.add(12)
