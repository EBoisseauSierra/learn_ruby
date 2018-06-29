def translate_word word
    consonants = %w[b c d f g h j k l m n p q r s t v w x z]
    vowels = %w[a e i o u y]
    if word[0..1] == 'qu'
        word[2..-1] + 'quay'
    elsif (consonants.include? word[0])
        if word[1..2] == 'qu'
            word[3..-1] + word[0] + 'quay'
        elsif (consonants.include? word[1])
            if (consonants.include? word[2])
                word[3..-1] + word[0..2]+ "ay"
            else
                word[2..-1] + word[0..1]+ "ay"
            end
        else
            word[1..-1] + word[0]+ "ay"
        end
    else
        word + "ay"
    end
end

def translate sentence
    sentence.split.map { |e| translate_word(e) }.join(' ')
end
