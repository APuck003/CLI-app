# osascript -e 'tell application "Messages" to send "Hello John!" to buddy "John Doe"'

def get_text
  puts "Enter full name of contact: "
  name = gets.chomp
  
  puts "Enter message you want to send: "
  message = gets.chomp
  
  # term_command = "osascript -e 'tell application \"Messages\" to send \"#{message}\" to buddy \"#{name}\"'"
  %x(osascript -e 'tell application "Messages" to send "#{message}" to buddy "#{name}"')
end

def send_text
  get_text
end

send_text