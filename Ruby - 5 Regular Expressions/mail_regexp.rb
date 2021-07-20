def valid?(email)
  # TODO: return true if the email is valid, false otherwise
  email.match?(/([a-z0-9]+)@([a-z0-9]+)\.([a-z]+)/)
end

def clean_database(emails)
  # TODO: return an array with the valid emails only
  emails.select { |email| email.match?(/([a-z0-9]+)@([a-z0-9]+)\.([a-z]+)/) }
end

def group_by_tld(emails)
  # TODO: return a Hash with emails grouped by TLD
  valid_email = {}
  emails.each do |email|
end

def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
end

def compose_translated_email(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  # TODO: translate subject, body, closing and signature, according to TLD
end
