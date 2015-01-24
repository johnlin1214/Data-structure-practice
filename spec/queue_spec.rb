require_relative "../queue"

describe "Queue" do
  let(:first_element) {"1"}
  let(:second_element) {"2"}
  let(:myqueue) { Queue.new }

  before do
    myqueue.enqueue(first_element)
    myqueue.enqueue(second_element)
  end

  describe "Queue" do
    it "should create an instance of the class Queue" do
      expect(myqueue).to be_a Queue
    end
  end

  describe "#enqueue" do
    it "should allow you to enqueue a value" do
      expect(myqueue.peek).to eq first_element
    end
  end

  describe "#dequeue" do
    it "should allow you to dequeue a value" do
      expect(myqueue.dequeue).to eq first_element
    end
  end

  describe "#peek" do
    it "should allow you to see the next element out of the queue" do
      expect(myqueue.peek).to eq first_element
    end
  end

  describe "#empty?" do
   it "should return false if the queue is not empty" do
    expect(myqueue.empty?).to eq false
   end

   it "should return true if the queue is empty" do
    myqueue.dequeue
    myqueue.dequeue
    expect(myqueue.empty?).to eq true
   end
  end
end





