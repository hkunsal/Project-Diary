class GrammarStats
  def initialize
    @correct_texts = []
    @total_texts = []
  end

  def check(text) # text is a string
    @total_texts << text
    return false unless text.match?(/^[A-Z][\s\S]*?\+?[.?!](?:\n\n|$)/)
    @correct_texts << text
    true
  end

  def percentage_good
    return 0 if @total_texts.empty?
    
    ((@correct_texts.count.to_f/@total_texts.count) * 100).round(2)
    
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end