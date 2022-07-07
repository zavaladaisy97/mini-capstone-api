class Product < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { in: 10..500 }
  validates :price, presence: true, numericality: { greater_than: 0 } 



  def friendly_created_at 
    created_at.strftime("%B %e, %Y")
  end 


  def is_discounted?
    if price < 10
      true 
    else
     false
    end 
  end 

  def tax
    price * 0.09
  end 

  def total 
    price + tax  
  end 
end
