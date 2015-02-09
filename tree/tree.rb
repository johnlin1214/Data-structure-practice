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


