def echo argument
    argument
end

def shout argument
    argument.upcase
end

def repeat(argument, number_of_times = 2)
    argument + " #{argument}" * (number_of_times - 1)
end

def start_of_word(word, length)
    word[0...length]
end

def first_word sentence
    sentence.split[0]
end

def titleize title
    little_words = ['and', 'the', 'over']
    title.split.each_with_index.map { |e, i| ((i != 0) && (little_words.include? e)) ? e : e.capitalize }.join(' ')
end
