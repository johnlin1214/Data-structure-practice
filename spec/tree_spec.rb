require_relative "../tree/tree"

describe "Tree" do
  let(:root_node) { TreeNode.new("Root") }
  let(:tree) { Tree.new(root_node)}
  let(:grandma) { TreeNode.new("mom") }
  let(:grandpa) { TreeNode.new("dad") }
  let(:dog) { TreeNode.new("grandpa's dog") }
  let(:tree_test) {
    grandpa.add_child(dog)
    root_node.add_child(grandma)
    root_node.add_child(grandpa)
    Tree.new(root_node)
  }

  describe '#new' do
    it "should instantiate a new Tree object" do
      expect(tree).to be_a Tree
    end

    it "should initialize the given root as the root" do
      expect(tree_test.root).to eq root_node
    end
  end


end
