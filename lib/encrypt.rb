require './helper'

encrypt_1 = File.open(ARGV[0], "r")
text = encrypt_1.read

encrypt_1.close
message = text.strip

e = Enigma.new
key = '12345'
date = "041118"

output = File.open(ARGV[1], "w")

output.write(e.encrypt(message, key, date))

output.close

puts "'Created #{ARGV[1]}' with the key '#{key}' and the date '#{date}'"
