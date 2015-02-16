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
    if @items.size > 0
      @items = @items.take(@items.size - 1)
    else
      raise 'No items in stack'
    end
  end

  def size
    @items.size
  end
end
