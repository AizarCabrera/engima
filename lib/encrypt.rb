require './helper'

encrypt_1 = File.open(ARGV[0], "r")
text = encrypt_1.read

encrypt_1.close
message = text.strip

e = Enigma.new
key = '12345'
date = '051118'

output = File.open(ARGV[1], "w")

encrypt_hash = e.encrypt(message, key, date)
output.write(encrypt_hash[:encryption])
output.close

puts "'Created #{ARGV[1]}' with the key '#{key}' and the date '#{date}'"
