# encoding: utf-8

require_relative 'form'

class FormVIII < Form

  def initialize(root1, root2, root3, tense, pronoun, type)
    super
    @base = "ا" + @root1 + "ت" + @root2 + @root3
    @masdar = "الا" + @root1 + "ت" + @root2 + "ا" + @root3
  end

  def regular_present
    @base = @root1 + "ت" + @root2 + @root3
    super
  end

  def hollow_past
    @root2 = "ا"
    @base = "ا" + @root1 + "ت" + @root2 + @root3
    if [:he, :she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base = "ا" + @root1 + "ت" + @root3
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

  def hollow_present
    @root2 = "ا"
    @base = @root1 + "ت" + @root2 + @root3
    super
  end

  def assimilated_past
    "اتّ" + @root2 + @root3 + PAST_PRONOUNS[@pronoun]
  end

  def assimilated_present
    PRESENT_PRONOUNS[@pronoun][0] + "تّ" + @root2 + @root3 + PRESENT_PRONOUNS[@pronoun][1]
  end

end