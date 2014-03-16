# encoding: utf-8

require_relative 'form'

class FormI < Form

  def initialize(root1, root2, root3, tense, pronoun, type)
    super
    @base = @root1 + @root2 + @root3
    @masdar = "ال" + @base
  end

  def assimilated_past
    regular_past
  end

  def assimilated_present
    PRESENT_PRONOUNS[@pronoun][0] + @root2 + @root3 + PRESENT_PRONOUNS[@pronoun][1]
  end

  def defective_past
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

  def hollow_past
    @root2 = "ا"
    @base = @root1 + @root2 + @root3
    super
  end

end
