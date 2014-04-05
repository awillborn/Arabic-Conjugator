class Past

  def initialize(verb)
    @base = verb.base
    @pronoun = verb.pronoun
  end

  def conjugate
    @base + PAST_AFFIXES[@pronoun]
  end

end
