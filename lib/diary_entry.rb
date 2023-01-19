class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").length
  end

  def reading_time(wpm) 
    return count_words.to_f/wpm
  end

  $i = 0
  
  def reading_chunk(wpm, minutes) 
    word_array = []
    (wpm*minutes).times do 
      word_array << @contents.split(" ")[$i]
      $i += 1
      if $i >= @contents.split.length
        $i = 0
      end
    end
    return word_array.join(" ")
  end
end