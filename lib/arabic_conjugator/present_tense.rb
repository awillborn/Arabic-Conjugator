class Present

  def initialize(verb)
    @base = verb.base
    @pronoun = verb.pronoun
  end

  def conjugate
    PRESENT_AFFIXES[@pronoun][0] + @base + PRESENT_AFFIXES[@pronoun][1]
  end

end
