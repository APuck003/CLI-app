def get_text
  puts "Enter full name of contact: "
  name = gets.chomp
  
  puts "Enter message you want to send: "
  # .gsub!("'", '\'')
  message = gets.chomp.gsub("'", "`")

  # If message variable has single or double quotes, the command won't execute in command line
  %x(osascript -e 'tell application "Messages" to send "#{message}" to buddy "#{name}"')
end

def send_text
  get_text
end

send_text


# %x(osascript -e 'tell application "Messages" to send "I'm a "teapot."" to buddy "Ryan Daley"')