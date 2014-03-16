# encoding: utf-8

require_relative 'form'

class FormVI < Form

  def initialize(root1, root2, root3, tense, pronoun, type)
    super
    @base = "ت" + @root1 + "ا" + @root2 + @root3
    @masdar = "ال" + @base
  end


  def defective_present
    @root3 = "ى"
    super
  end

end