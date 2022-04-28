module Stock
  def check_stock
    if @instock == true
      puts "The item #{name} is in instock." #creating module
    elsif @instock == false
      puts "The item #{name} is not instock."
    end
  end
end
