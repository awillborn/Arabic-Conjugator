# encoding: utf-8

require_relative 'form'

class FormIV < Form

  def initialize(root1, root2, root3, tense, pronoun, type)
    super
    @base = "أ" + @root1 + @root2 + @root3
    @masdar = "الإ" + @root1 + @root2 + "ا" + @root3
  end

  def regular_present
    @base = @root1 + @root2 + @root3
    super
  end

  def hollow_past
    @root2 = "ا"
    @base = "أ" + @root1 + @root2 + @root3
    super
  end

end