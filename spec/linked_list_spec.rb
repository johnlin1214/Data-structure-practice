require_relative "../linked_list"

describe LinkedList do
  let(:new_list) { LinkedList.new }
  describe "#new" do
    it "allows you to create a new instance of a LinkedList" do
      expect(new_list).to be_a LinkedList
    end
  end

  describe "#insert_first" do
    before :each do
      new_list.insert_first("apple")
      new_list.insert_first("pear")
    end

    it "allows you to insert an element at the front of the list - correct value" do
      expect(new_list.head.value).to eq "pear"
    end

    it "allows you to insert an element at the front of the list - correct pointer" do
      expect(new_list.head.pointer.value).to eq "apple"
    end
  end

  describe "#remove_first" do
    before :each do
      new_list.insert_first("apple")
      new_list.insert_first("pear")
    end

    it "should remove the first element - correct value" do
      new_list.remove_first
      expect(new_list.head.value).to eq "apple"
    end

    it "should remove the first element - correct pointer" do
      new_list.remove_first
      expect(new_list.head.pointer).to eq nil
    end
  end

end

