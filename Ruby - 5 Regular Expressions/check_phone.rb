def french_phone_number?(phone_number)
  # TODO: true or false?
  if phone_number.length == 11 || phone_number.length == 17
    phone_number.match?(/^\+\s?3{2}\s?[1-9]{1}\s?[0-9]{2}\s?[0-9]{2}\s?[0-9]{2}\s?[0-9]{2}/)
  else
    phone_number.match?(/0{1}\s?[1-9]{1}(\s|-)?[0-9]{2}(\s|-)?[0-9]{2}(\s|-)?[0-9]{2}(\s|-)?[0-9]{2}/)
  end
end
