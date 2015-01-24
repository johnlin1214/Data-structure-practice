class GraphNode
  attr_accessor :nodes, :value

  def initialize(value)
    @value = value
    @nodes = []
  end

  def add_edge(other_node)
    @nodes.push(other_node)
  end

  def value

  end

  def nodes

  end


end
