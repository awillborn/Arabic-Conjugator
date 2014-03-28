# encoding: utf-8

require_relative '../past_tense'

class FormVIIPast < Past

  def hollow
    @root2 = "ا"
    @base = "ان" + @root1 + @root2 + @root3
    if [:he, :she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base = "ان" + @root1 + @root3
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

end