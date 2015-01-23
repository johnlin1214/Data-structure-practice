require_relative 'linked_list'

class MyHash
  attr_accessor :collection, :size

  def initialize
    @collection = Array.new
  end

  def set(key, value)
    @collection[hash_key(key)] = [key, value]
  end

  def get(key)
    if has_key(key)
      bucket = @collection[hash_key(key)]
      bucket[1]
    else
      raise KeyError
    end
  end

  def has_key(key)
    @collection[hash_key(key)] != nil
  end

  def remove(key)
    @collection[hash_key(key)] = nil
  end

  def iterate
    @collection = @collection.reject {|pair| pair.nil? }
    @collection.each do |pair|
      p "#{pair[0]}" => "#{pair[1]}"
    end
  end

  private

  def hash_key(key)
   key.to_s.bytes.reduce(:+) % 25
  end
end


