# encoding: utf-8

require_relative 'form_initializer'

class FormVII < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun = nil)
    super
    @base = "ان" + @root1 + @root2 + @root3
    @masdar = "الان" + @root1 + @root2 + "ا" + @root3
  end

  def regular_present
    @base = "ن" + @root1 + @root2 + @root3
    super
  end

  def hollow_past
    @root2 = "ا"
    @base = "ان" + @root1 + @root2 + @root3
    if [:he, :she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base = "ان" + @root1 + @root3
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

  def hollow_present
    @root2 = "ا"
    @base = "ن" + @root1 + @root2 + @root3
    super
  end

end