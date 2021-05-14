class StringProblems
  def count_characters(string)
    count = {upper: 0, down: 0, number: 0, special: 0 }

    string.each_char do |char|
      if !char.scan(/[!@#$%^&*()_+{}\[\]:;'"\/\\?><.,]/).empty?
        count[:special] +=1
      elsif char !~ /\D/
        count[:number] +=1
      elsif char == char.upcase
        count[:upper] += 1
      elsif char == char.downcase
        count[:down] +=1
      end
    end
    count
  end

  def missing_character(setence)
    list = [false] * 26
    letters = ('a'..'z').to_a

    setence = setence.downcase.split('')
    setence.each do |chars|
      next if chars == ' '
  
      index_letter = letters.find_index(chars)
      if index_letter
        list[index_letter] = true
      end
    end
    list.include?(false)
  end
end