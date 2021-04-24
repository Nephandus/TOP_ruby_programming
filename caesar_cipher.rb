def caesar_cipher(message, shift)
    if (shift >= 26)
        shift %= 26
    end
    message = message.chars

    coded_message = []
    alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    shifted_alphabet = []
    alphabet.each_with_index do |letter, index|
        unless (index >= (alphabet.length - shift))
            shifted_alphabet.push(alphabet[index + shift])
        else
            shifted_alphabet.push(alphabet[(shift + index - alphabet.length)])
        end
    end

    message.each do |letter|
        if letter.match? /\A[a-z'-]*\z/
            coded_message.push(shifted_alphabet[alphabet.find_index { |index| index == letter}])
        elsif
            letter.match? /\A[A-Z'-]*\z/
            coded_message.push(shifted_alphabet[alphabet.find_index { |index| index == letter.downcase}].upcase)
        else
            coded_message.push(letter)
        end
    end
    coded_message.join
end

#Neither was an interface specified nor any exception catching expected, so the below was just for demonstration.
string_to_cipher = ""
shift_distance = 0
puts "Enter string to cipher:"
string_to_cipher = gets.chomp
puts "Enter shift distance:"
shift_distance = gets.to_i
p caesar_cipher(string_to_cipher, shift_distance)
