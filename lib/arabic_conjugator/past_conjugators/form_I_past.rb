# encoding: utf-8

require_relative '../past_tense'

class FormIPast < Past

  def assimilated
    regular
  end

  def defective
    @base = @base[0...-1]
    if @root3 == "و" && @pronoun == :he
      @base + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      @base + "ى"
    elsif @pronoun == :they || @pronoun == :she
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

  def hollow
    @root2 = "ا"
    @base = @root1 + @root2 + @root3
    super
  end

end