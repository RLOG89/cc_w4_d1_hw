class WordFormatter

  def initialize(text)
    @text = text
  end

  def text_upcase
    @text.upcase
  end

  def camel_case()
    @text.split.map(&:capitalize).join('')
  end

end