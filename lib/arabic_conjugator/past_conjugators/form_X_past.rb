# encoding: utf-8

require_relative '../past_tense'

class FormXPast < Past

  def hollow
    @root2 = "ا"
    @base = "است" + @root1 + @root2 + @root3
    if [:he, :she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base = "است" + @root1 + @root3
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

end