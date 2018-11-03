require './helper'

encrypt_1 = File.open(ARGV[0], "r")
text = encrypt_1.read

encrypt_1.close
message = text.strip

e = Enigma.new
key  = KeyGen.new
date = OffsetGen.new
output = File.open(ARGV[1], "w")

output.write(e.encrypt(message))

output.close

puts "'Created #{ARGV[1]}' with the key '#{key.random.join}' and the date '#{date.offsets.join}'"
