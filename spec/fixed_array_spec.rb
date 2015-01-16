require_relative "../fixed_array"

describe FixedArray do
  size = 5
  index = 2
  out_of_bounds_index = 10
  element = "John's pet hippo"
  let(:fixed_array) { FixedArray.new(size) }
  let(:set_element) { fixed_array.set(element, index) }
  let(:set_out_of_bounds_element) { fixed_array.set(element, out_of_bounds_index) }

  describe  "Let's you create a new fixed array" do
    it "is an instance of FixedArray" do
      expect(fixed_array).to be_a FixedArray
    end

    it "has a set size" do
      expect(fixed_array.size).to eql size
    end
  end

  describe "method #set" do
    it "can set an element at a specified index" do
      expect(set_element).to eql element
    end

    it "throws an error when you set an element at a invalid index" do
      expect{set_out_of_bounds_element}.to raise_error IndexError
    end
  end

  describe "method #get" do
    it "can return an element at a specified index" do
      set_element
      expect(fixed_array.get(index)).to eql element
    end

    it "throws an error when you get an element at a invalid index" do
      expect{fixed_array.get(out_of_bounds_index)}.to raise_error IndexError
    end
  end
end
