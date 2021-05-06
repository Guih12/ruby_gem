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
end