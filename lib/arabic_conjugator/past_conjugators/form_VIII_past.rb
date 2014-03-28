# encoding: utf-8

require_relative '../past_tense'

class FormVIIIPast < Past

  def hollow
    @root2 = "ا"
    @base = "ا" + @root1 + "ت" + @root2 + @root3
    if [:he, :she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base = "ا" + @root1 + "ت" + @root3
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

  def assimilated
    "اتّ" + @root2 + @root3 + PAST_PRONOUNS[@pronoun]
  end

end
