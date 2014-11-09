require 'sendgrid-ruby'
require 'mail'
require 'io/console'

# write a test e-mail with SendGrid

  puts ""
  puts "-----------------------------"
  puts "Send an e-mail using SendGrid"
  puts "-----------------------------"
  puts ""
  puts ""
  puts "Enter your SENDGRID user name (Please be accurate)"
  puts "--------------------------------------------------"
  puts ""
  SENDGRID_USERNAME = gets.chomp
  puts ""
  puts "Enter your password (Please be accurate)"
  puts "----------------------------------------"
  puts ""
  print "Password will be hidden:"
  puts ""
  SENDGRID_PASSWORD = STDIN.noecho(&:gets).chomp
  puts ""
  puts "Enter recipient's e-mail address"
  puts "--------------------------------"
  puts ""
  recipient = gets.chomp
  puts ""
  puts "Enter your e-mail address"
  puts "--------------------------"
  puts ""
  email = gets.chomp
  puts ""
  puts "Enter email subject line"
  puts "-------------------------"
  puts ""
  subject = gets.chomp
  puts ""
  puts "Enter body text"
  puts "---------------"
  puts ""
  body = gets.chomp
  puts ""
  puts ""
  puts "Thank you. Your email may take 3-5 minutes to process. Please be patient."
  puts ""
  puts ""


# As a hash
client = SendGrid::Client.new(api_user: "#{SENDGRID_USERNAME}", api_key: "#{SENDGRID_PASSWORD}")
  


mail = SendGrid::Mail.new do |m|
  m.to = "#{recipient}"
  m.from = "#{email}"
  m.subject = "#{subject}"
  m.text = "#{body}"

end


puts client.send(mail) 
# {"message":"success"}
