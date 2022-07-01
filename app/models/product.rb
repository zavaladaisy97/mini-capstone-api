class Product < ApplicationRecord
  def friendly_created_at 
    created_at.strftime("%B %e, %Y")
  end 


  def is_discounted?
    if price < 10
      return true 
    end 
  end 

  def tax
    tax = price * 0.09
    tax
  end 

  def total 
    total = price + tax 
    total 
  end 
end
