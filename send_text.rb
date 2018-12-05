def get_text
  puts "Enter full name of contact: "
  name = gets.chomp
  puts "Enter message you want to send: "
  message = gets.chomp.gsub("'", "`")

  contact = Contact.find_or_create_by(name: name)
  message = Message.create(content: message)
  user = User.create(contact_id: contact.id, message_id: message.id)
  contact.save
  message.save
  user.save

  %x(osascript -e 'tell application "Messages" to send "#{message}" to buddy "#{name}"')
end

def send_text
  get_text
end


send_text
