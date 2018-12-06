$all_names = []
$message = ""
def get_name
  puts "Enter full name of contact: "
  name = gets.chomp
  $all_names << name
  puts "Do you want to send this message to another person?"
  choice = gets.chomp
  unless choice.downcase == "no"
    get_name
  end
end

def get_message
  puts "Enter message you want to send: "
  $message = gets.chomp.gsub("'", "`")
end

def execute_text
  binding.pry
  message1 = Message.create(content: $message)
  $all_names.each do |name|
    contact = Contact.find_or_create_by(name: name)
    user = User.create(contact_id: contact.id, message_id: message1.id)
    contact.save
    message1.save
    user.save

    %x(osascript -e 'tell application "Messages" to send "#{$message}" to buddy "#{name}"')
  end
end

def send_text
  get_name
  get_message
  execute_text
end

def send_multiple_texts
end


send_text
