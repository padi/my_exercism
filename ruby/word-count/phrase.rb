class Phrase
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def word_count
    {text => 1}
  end
end
