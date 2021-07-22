def valid?(email)
  # TODO: return true if the email is valid, false otherwise
  email.match?(/([a-z0-9]+)@([a-z0-9]+)\.([a-z]+)/)
  # email.match?(/\w+@\2\w+\.\w+/)
end
def clean_database(emails)
  # TODO: return an array with the valid emails only
  emails.select { |email| email.match?(/([a-z0-9]+)@([a-z0-9]+)\.([a-z]+)/) }
  # valid_emails = []
  # email.each { |email| valid_emails << email if valid?(email) }
  # valid_emails
end
def group_by_tld(emails)
  emails.group_by do |email|
    email.match(/.(\w+)$/)[1]
  end
end
def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  regez = /^(?<username>\w+).(?<domain>\w+).(?<tld>\w+)/
  db_hash = {}
  match_data = email.match(regez)
  db_hash[:username] = match_data[:username]
  db_hash[:domain] = match_data[:domain]
  db_hash[:tld] = match_data[:tld]
  db_hash
end
LOCALES = {
  en: {
    subject: "Our website is online",
    body: "Come and visit us!",
    closing: "See you soon",
    signature: "The Team"
  },
  fr: {
    subject: "Notre site est en ligne",
    body: "Venez nous rendre visite !",
    closing: "A bientot",
    signature: "L'équipe"
  },
  de: {
    subject: "Unsere Website ist jetzt online",
    body: "Komm und besuche uns!",
    closing: "Bis bald",
    signature: "Das Team"
  }
}
# How to condense below code?
def compose_translated_email(email)
  # 1. Extract username, domain, TLD from the email
  translated_hash = {}
  translated_hash[:username] = email.match(/^(\w+)[^@]/)[0]
  translated_hash[:domain] = email.match(/(?<=@)(.*)(?=\.)/)[0]
  translated_hash[:tld] = email.match(/[^.]([a-z]+)$/)[0]
  # 2. Infer the language of the user from the TLD
  LOCALES.each do
    case translated_hash[:tld]
    when 'fr'
      translated_hash[:subject] = LOCALES[:fr][:subject]
      translated_hash[:body] = LOCALES[:fr][:body]
      translated_hash[:closing] = LOCALES[:fr][:closing]
      translated_hash[:signature] = LOCALES[:fr][:signature]
    when 'de'
      translated_hash[:subject] = LOCALES[:de][:subject]
      translated_hash[:body] = LOCALES[:de][:body]
      translated_hash[:closing] = LOCALES[:de][:closing]
      translated_hash[:signature] = LOCALES[:de][:signature]
    else
      translated_hash[:subject] = LOCALES[:en][:subject]
      translated_hash[:body] = LOCALES[:en][:body]
      translated_hash[:closing] = LOCALES[:en][:closing]
      translated_hash[:signature] = LOCALES[:en][:signature]
    end
  end
  # 3. Return translated hash for each language
  p translated_hash
end
