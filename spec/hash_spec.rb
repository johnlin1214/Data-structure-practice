require_relative "../hash"

describe MyHash do
  let(:hash) { MyHash.new }

  describe "#new" do
    it "should be an instance of MyHash" do
      expect(hash).to be_a MyHash
    end
  end

  describe "#set" do
    it "should set a key value pair" do
      hash.set("key", "value")
      expect(hash.get("key")).to eq "value"
    end
  end

  describe "get" do
    it "should get the value of a key" do
      hash.set("key", "value")
      expect(hash.get("key")).to eq "value"
    end
  end

  describe "#has_key" do
    it "should return true if the key does exist" do
      hash.set("key", "value")
      expect(hash.has_key("key")).to eq true
    end

    it "should return false if the key does not exist" do
      expect(hash.has_key("key")).to eq false
    end
  end

  describe "#remove" do
    it "should remove the key value pair - given the key" do
      hash.set("key", "value")
      hash.remove("key")
      expect(hash.has_key("key")). to eq false
    end
  end
end
