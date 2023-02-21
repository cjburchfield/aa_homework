module ApplicationHelper
  def auth_token
    "<input
      type='hidden'
      name='authenticity_token'
      value='#{form_authenticity_token}'
    />".html_safe
  end
end

# Put this code in your new auth_token method, but with a few changes. 
# First, you need to wrap the input tag in a string and call #html_safe on it. Otherwise, 
# your auth_token method will output the string literal for your input tag. 
# Secondly, now that your input tag is little more than a string in Ruby-land, 
# you shouldn't interpolate the actual form_authenticity_token using erb tags. 
# Instead, just interpolate form_authenticity_token using the string interpolation syntax 
# you know and love (#{}).

# Sweet! Looking good? Now go through your app and replace all of the form_authenticity_token input fields with calls to your snazzy new method,
#  <%= auth_token %>, to dry up your code and simplify your life.