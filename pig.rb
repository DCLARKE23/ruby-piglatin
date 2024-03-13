# English -> Pig Latin

puts "Enter a word or string you would like to be translated."
response = gets

def translate_word(word)
    suffix = 'ay'
    vowel_suffix = ['hay', 'way', 'nay', 'yay']
    vowels = ['a', 'e', 'i', 'o', 'u']
    first_letter = word[0].downcase()
    if vowels.include?(first_letter)
        puts word.concat(vowel_suffix[rand(0...3)]).delete("\n")
    else
        consonants = []
        for i in 0...word.length()
            if vowels.include?(word[i]) == false
                consonants << word[i]
            else
                break
            end
        end
        "#{word[consonants.length..-1].delete("\n") + consonants.join + suffix}"
    end
end

def translate_string(string)
    words = string.split(" ")
    new_string = words.map {|word| translate_word(word)}
    new_string.join(" ")
end

if __FILE__ == $0
    puts translate_string(response)
end
