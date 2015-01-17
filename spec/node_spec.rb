require_relative "../node"

describe Node do
  let(:node) {Node.new(1)}
  let(:next_node) {Node.new(2)}

  describe "#new" do
    it "creates a new instance of a node" do
      expect(node).to be_a Node
    end
  end

  describe "#insert_after" do
    it "expects the current node pointer to point to the new node" do
      node.insert_after(next_node)
      expect(node.pointer).to eq next_node
    end
  end

  describe "#remove_after" do
    it "insert remove the next node" do
      node.insert_after(next_node)
      node.remove_after
      expect(node.pointer).to eq nil
    end
  end

end
