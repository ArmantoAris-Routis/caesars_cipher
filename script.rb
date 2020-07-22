def cipher(word,keys)
  lower = ("a".."z").to_a
  upper = ("A".."Z").to_a
  new_word = []
  word.split("").map do |c|
    if lower.include?(c)
      lower.index(c)+keys < lower.length ? new_word.push(lower[lower.index(c)+keys]) : new_word.push(lower[(lower.index(c)+keys)-lower.length])
    elsif up.include?(c)
      upper.index(c)+keys < upper.length ? new_word.push(upper[upper.index(c)+keys]) : new_word.push(upper[(upper.index(c)+keys)-upper.length])
    elsif c == " "
      new_word.push(c)
    end
  end
  p new_word.join("")
end
 
puts "What would you like to encrypt?"
text = gets.chomp
puts "How many indexes do you want move your text?"
indexes = gets.chomp.to_i
cipher(text,indexes)