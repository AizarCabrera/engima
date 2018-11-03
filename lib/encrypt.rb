require './helper'

encrypt_1 = File.open(ARGV[0], "r")
text = encrypt_1.read

encrypt_1.close

e = Enigma.new
message = text.strip
date = Date.today
key = "12345"
output = File.open(ARGV[1], "w")

output.write(e.encrypt(message))

output.close

print "Created '#{ARGV[1]}' with the key '#{key}' and the date '#{date}'"
