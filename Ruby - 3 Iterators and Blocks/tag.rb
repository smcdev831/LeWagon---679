def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  if attributes.nil?
    "<#{tag_name}>#{yield}</#{tag_name}>"
  else
    return "<#{tag_name} #{attributes.first}=\"#{attributes.last}\">#{yield}</#{tag_name}>"
  end
end

#had to add in the antislash manually??
