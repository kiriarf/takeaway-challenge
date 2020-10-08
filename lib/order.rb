require_relative 'menu'

class Order
  attr_reader :basket, :total

  def initialize(menu = Menu.new)
    @menu = menu
    @basket = []
    @total = 0
  end

  def show_menu
    puts @menu.print_menu
  end

  def add_item(item)
    raise "This item doesn't exist!" if check_if_not_in_menu(item)

    @basket << item
  end

  private
  def check_if_not_in_menu(item)
    !@menu.items.include?(item)
  end
end
