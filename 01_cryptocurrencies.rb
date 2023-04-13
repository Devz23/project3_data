require_relative "./source.rb"

def perform
   handle_crypto = handle_blockchain
   handle_amount = handle_devise

puts "Question 1"
puts "Voici le nouveau hash : \n#{hash = Hash[handle_crypto.zip(handle_amount.map(&:to_f))]}"
print"<-------------------------------------------------->\n"

puts "Question 2"
puts "La crypto ayant la plus grosse valeur est #{hash.select{|key, value|value==hash.values.max}}"
print"<-------------------------------------------------->\n"

puts "Question 3"
puts "Les cryptos ayant la plus petite valeur sont #{hash.select{|key, value|value==hash.values.min}}"
print"<-------------------------------------------------->\n"

puts "Question 4"
puts "Ci-dessous la liste des crypto dont le cour est inférieur à 6000 :\n #{hash.select{|key, value|value < 6000}}"
print"<-------------------------------------------------->\n"

puts "Question 5"
puts "La devise la plus chère parmi celles dont le cours est inférieur à 6000 est #{hash.select{|key, value|value < 6000}.max_by(&:last)}"
print"<-------------------------------------------------->\n"

end
perform