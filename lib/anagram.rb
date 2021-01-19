# Your code goes here!

class Anagram
    def initialize(word)
        @word = word
    end

    def match(array)
        array.select do |member|
            matches = member.length == @word.length 
            if matches
                @word.split("").each do |letter|
                    if member.count(letter) != @word.count(letter)
                        matches = false
                    end
                end
            end
            next matches
        end
    end
end
