require_relative "../node"

describe Node do
  value = "apple"
  let(:new_node) {Node.new(value)}
  describe "#new" do
    it "creates a new instance of a node" do
      expect(new_node).to be_a Node
    end

  end




end
