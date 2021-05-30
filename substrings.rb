dictionary = ["tost","git","gel","wtf","sosis","telefon","naber","hmm","sa","el","ruby","lol","e"]

def substrings (string, dictionary)
    matches = {}
    dictionary.each do |word|
        matches[word] = string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word)
    end
    matches
end

puts substrings("Sosis", dictionary)
puts substrings("Naber? Buraya gelir misin", dictionary)
