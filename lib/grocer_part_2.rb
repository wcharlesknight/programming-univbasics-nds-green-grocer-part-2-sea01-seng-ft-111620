require_relative './part_1_solution.rb'
require 'pry' 


def apply_coupons(cart, coupons)
  cart.each do | item |
    coupons.each do | it_coupon |
      if item[:item] == it_coupon[:item]
        if it_coupon[:num] <= item[:count]
          couponed_item = {:item => "#{item[:item]} W/COUPON", :price => (it_coupon[:cost] / it_coupon[:num]), 
          :clearance => item[:clearance],
          :count => it_coupon[:num]}
          
          cart << couponed_item
          item[:count] -= it_coupon[:num]
        end
      end
    end
  end
  cart
  #binding.pry 
end




def apply_clearance(cart)
  new_cart = [] 
  cart.each do |item|
    if item[:clearance]
      item[:price] *= 0.8
      new_cart << item
    else
      new_cart << item 
    end   
  #binding.pry
  end
  new_cart
end

def checkout(cart, coupons)
  
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end


