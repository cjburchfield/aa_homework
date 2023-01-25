#*INSTRUCTIONS*#
# 1. Read the problem statement to make sure you fully understand the problem 
# 2. Identify the base case(s) 
# 3. Determine the inductive step 
# 4. Write the function 
# 5. Run the provided test cases to verify you have a working solution

#   def sum_to(n)
    #   return nil if n < 1
    #   return 1 if n == 1
    #   n + sum_to(n - 1);
#   end

#   # Test Cases
# #   p sum_to(5)  # => returns 15
# #   p sum_to(1)  # => returns 1
# #   p sum_to(9)  # => returns 45
# #   p sum_to(-8)  # => returns nil

####################################################

#   def add_numbers(nums_array)
#     return nil if nums_array.empty?
#     return nums_array[0] if nums_array.length == 1
#     nums_array[0] + add_numbers(nums_array[1..-1])
#   end

#     # Test Cases 
#    p add_numbers([1,2,3,4]) # => returns 10
#    p add_numbers([3]) # => returns 3
#    p add_numbers([-80,34,7]) # => returns -39
#    p add_numbers([]) # => returns nil

####################################################

#    def gamma_fnc(n)
#     return nil if n <= 0
#     return n if n == 1 
#     return (n - 1) * gamma_fnc(n - 1)
#    end

#     # Γ(5) = 4! = 4 * 3 * 2 * 1     

#      # Test Cases
#   p gamma_fnc(0)  # => returns nil
#   p gamma_fnc(1)  # => returns 1
#   p gamma_fnc(4)  # => returns 6
#   p gamma_fnc(8)  # => returns 5040

####################################################

# def ice_cream_shop(flavors, favorite)
#     return false if flavors.empty?
#     return true if flavors[-1] == favorite
    
#     ice_cream_shop(flavors[0...-1], favorite)
    
# end


#       # Test Cases
#   p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
#   p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
#   p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
#   p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
#   p ice_cream_shop([], 'honey lavender')  # => returns false

####################################################

# def reverse(string)
#     return string if string.length <= 1
#     string[-1] + reverse(string[0...-1])
# end

#   # Test Cases
#   p reverse("house") # => "esuoh"
#   p reverse("dog") # => "god"
#   p reverse("atom") # => "mota"
#   p reverse("q") # => "q"
#   p reverse("id") # => "di"
#   p reverse("") # => ""