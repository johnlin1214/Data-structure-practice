require_relative "tree_node"

class Tree
  attr_accessor :root

  def initialize(node)
    @root = node
  end

 def search(search_value)
    node_list = [@root]

    until node_list.empty?
      current_node = node_list.pop
      return true if current_node.value == search_value

      unless current_node.childern.empty?
        current_node.childern.each do |childern|
          node_list << childern
        end
      end
    end

    false
  end
end

# n1 = TreeNode.new("root")
# n2 = TreeNode.new("level 1")
# n3 = TreeNode.new("level 1 twin")
# n4 = TreeNode.new("child of level 1 twin")
# n1.add_child(n2)
# n1.add_child(n3)
# n3.add_child(n4)

# puts "------SEARCHING TREE------"

# tree = Tree.new(n1)
# p tree.search("baby")
