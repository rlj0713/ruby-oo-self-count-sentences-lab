class String

  def initialize(name)
    @name = name
  end

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    new = self.split(/(!)+|(\?)+|(\.)+\s|\z/)
    (new.length + 1) / 2
  end

end