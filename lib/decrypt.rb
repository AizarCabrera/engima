require './lib/enigma'

decrypt_1 = File.open(ARGV[0], "r")
text = decrypt_1.read
decrypt_1.close
message = text.strip

e = Enigma.new
key  = ARGV[2]
offset = ARGV[3]
output = File.open(ARGV[1], "w")

decrypt_hash = e.decrypt(message, key, offset)
output.write(decrypt_hash[:decryption])
output.close

puts "'Created #{ARGV[1]}' with the key '#{decrypt_hash[:key]}' and the date '#{decrypt_hash[:date]}'"
