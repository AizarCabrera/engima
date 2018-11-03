require './helper'

decrypt_1 = File.open(ARGV[0], "r")
text = decrypt_1.read
decrypt_1.close
message = text.strip

e = Enigma.new
key  = KeyGen.new
date = OffsetGen.new
output = File.open(ARGV[1], "w")

output.write(e.decrypt(message))

output.close

puts "'Created #{ARGV[1]}' with the key '#{key.random.join}' and the date '#{date.offsets.join}'"
