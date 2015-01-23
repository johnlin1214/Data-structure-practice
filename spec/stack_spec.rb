require_relative "../stack"

describe "Stack" do
  let(:first) {"1"}
  let(:second) {"2"}
  let(:mystack) {Stack.new}

  before do
    mystack.push(first)
    mystack.push(second)
  end

  describe "Stack" do
    it "should create a new instance of Stack class" do
      expect(mystack).to be_a Stack
    end
  end

  describe "#push" do
    it "add a value at the top of the stack" do
      expect(mystack.top).to eq "2"
    end

    it "add a value at the top of the stack" do
      expect(mystack.empty?).to eq false
    end
  end

  describe "#top" do
    it "returns the top element of the stack" do
       expect(mystack.top).to eq "2"
    end

    it "returns nil if the stack is empty" do
      mystack.pop
      mystack.pop
      expect(mystack.top).to eq nil
    end
  end

  describe "empty" do
    it "return true if the stack is empty" do
      mystack.pop
      mystack.pop
      expect(mystack.empty?).to eq true
    end

    it "returns false if the stack is not empty" do
      expect(mystack.empty?).to eq false
    end
  end
end
