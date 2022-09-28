class LinkedList
  def initialize
  
  end

  def append(value)
    Node.new(value)
  end

  def prepend(value)
    Node.new(value)
  end

  def size
  end

  def head
  end

  def tail
  end

  def at(index)
  end

  def pop
  end

  def contains?(value)
  end

  def find(value)
  end

  def to_s
  end
  
end


class Node
  
  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

end
