# Lunchtime Linq http://markheath.net/post/lunchtime-linq-challenge-2

# 1. Motorsport
total_score = "10,5,0,8,10,1,4,0,10,1".split(',').map{|number| number.to_i}.sort.drop(3).inject(:+)
puts "Motorsport score #{total_score}"

# 2. Bishop Moves
current_position = {x: 'c', y: 6}
possible_moves = ('a'..'h').to_a.each_with_object([]) do |row, pl|
	(0..8).to_a.each do |col|
		x = (current_position[:x].ord - row.ord).abs
		y = (current_position[:y] - col).abs
		pl.push("#{row} #{col}") if x == y
	end
end
puts "Moves are #{possible_moves}"

# 3. Sampling
#3.1
sample_data = "0,6,12,18,24,30,36,42,48,53,58,63,68,72,77,80,84,87,90,92,95,96,98,99,99,100,99,99,98,96,95,92,90,87,84,80,77,72,68,63,58,53,48,42,36,30,24,18,12,6,0,-6,-12,-18,-24,-30,-36,-42,-48,-53,-58,-63,-68,-72,-77,-80,-84,-87,-90,-92,-95,-96,-98,-99,-99,-100,-99,-99,-98,-96,-95,-92,-90,-87,-84,-80,-77,-72,-68,-63,-58,-53,-48,-42,-36,-30,-24,-18,-12,-6".split(',')
sample_result = sample_data.each_slice(5).map{|one,two,three,four,five| five}
puts "Sample #{sample_result}"

# 4. Votes
yesno_responses = "Yes,Yes,No,Yes,No,Yes,No,No,No,Yes,Yes,Yes,Yes,No,Yes,No,No,Yes,Yes".split(',')
# Convert to hash and count, reverse sort so that hash is Yes then No, convert back to array, subtract the adjacent elements
vote_result = yesno_responses.each_with_object({}) { |vote,pl| pl.key?(vote) ? pl[vote][:count] += 1 : pl[vote] = { count: 1 }}.sort.reverse.map{|_k,v| v[:count]}.inject(:-)
puts "Vote result: #{vote_result}"

# 5. Counting Pets
all_pets = "Dog,Cat,Rabbit,Dog,Dog,Lizard,Cat,Cat,Dog,Rabbit,Guinea Pig,Dog".split(',')
# All pets ... grouped
grouped_pets = all_pets.map{|animal| (animal.downcase == "cat" || animal.downcase == "dog") ? animal : "Other"}.each_with_object(Hash.new(0)) { |pet,pl| pl[pet] += 1 }
puts "Pet count #{grouped_pets}"

# 6. Character replicator
char_array = "A5B10CD3".split(/([A-Z])(\d*)/)
constructed_characters = char_array.each_slice(3).map { |_spc, letter, number| letter * (number.to_i > 0 ? number.to_i : 1) }.join('')
puts "Constructed characters #{constructed_characters}"