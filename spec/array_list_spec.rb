require_relative '../array_list'

describe ArrayList do
  size = 5
  let(:array_list) { ArrayList.new(size) }
  describe "#new" do
    it "should create a new instance of ArrayList" do
      expect(array_list).to be_a ArrayList
    end
  end

  describe "#add" do
    element = "John's pet walrus"
    it "should add a new element to the ArrayList" do
      expect(array_list.add(element)).to eq element
    end
  end

  describe "#size" do
    it "should return the size of the ArrayList" do
      expect(array_list.size).to eq size
    end
  end

  describe "#get" do
    new_element = "John's pet seal"
    it "should get the element at a specified index" do
      array_list.add new_element
      last_index = array_list.size - 1
      expect(array_list.get(last_index)).to eq new_element
    end

    it "should return nil if the index is out of bounds" do
      last_index = array_list.size - 1
      expect(array_list.get(last_index)).to be nil
    end
  end

  describe "#set" do
    before(:each) do
      @index = 2
      @big_index = 20
      array_list.set("John's pet otter", @index)
      array_list.set("John's pet otter", @big_index)
    end

    it "should replace an exisiting element at a given index" do
      expect(array_list.get(@index)).to eq "John's pet otter"
    end

    it "should set the element at given index" do
      expect(array_list.get(@big_index)).to eq "John's pet otter"
    end
  end
end

