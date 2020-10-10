require_relative 'item'

class Menu
  attr_reader :items

  def initialize(item_class = Item)
    @item_class = item_class
    @items = {}
  end
  
  def add_item(name, price)
    item = @item_class.new(name, price)
    @items[name] = price
  end

  def delete_item(name)
    @items.delete(name)
  end

  def print_menu
    @items.each do |name, price|
      puts "#{name}, £#{price}"
    end
  end
end
