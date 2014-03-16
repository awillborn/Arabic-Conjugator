# encoding: utf-8

require_relative 'form'

class FormX < Form

  def initialize(root1, root2, root3, tense, pronoun, type)
    super
    @base = "است" + @root1 + @root2 + @root3
    @masdar = "الاست" + @root1 + @root2 + "ا" + @root3
  end

  def regular_present
    @base = "ست" + @root1 + @root2 + @root3
    super
  end

  def hollow_past
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