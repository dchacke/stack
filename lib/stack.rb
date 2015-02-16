class Stack
  attr_accessor :items

  def initialize
    @size = 0
    @items = Array.new
  end

  def push(item)
    @items << item
  end

  def pop
    @items.pop
  end

  def size
    @items.size
  end
end
