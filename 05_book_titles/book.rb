class Book
    attr_accessor :title

    def title=(input_title)
        words_to_not_capitalize = %w(the a an and in the of)
        @title = input_title.split.each_with_index.map { |e, i| (i != 0 && (words_to_not_capitalize.include? e)) ? e : e.capitalize }.join(' ')
    end
end
