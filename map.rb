require_relative 'array_list'

class Map
  def intialize
    @keys = ArrayList.new(1)
    @values = ArrayList.new(1)
  end

  def set(key, value)
    pair = [key, value]
    @map.push(pair)

  end




end


# Map::new: Instantiate a new Map
# Map#set(key, value): Add a key-value pair. If the key is already present, replace the value. Return the value
# Map#get(key): Retrieve the value stored at key
# Map#has_key?(key): Answer where or not the map has an entry for key
# Map#remove(key): Remove the entry stored at key
# Map#iterate{ |value, key| block }: Iterate through the Map, passing the block each value and key
