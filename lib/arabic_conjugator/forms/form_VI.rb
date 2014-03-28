# encoding: utf-8

require_relative '../form'
require_relative '../factories/conjugator_factory'

class FormVI < Form

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = "ت" + @root1 + "ا" + @root2 + @root3
    @masdar = "ال" + @base
  end

end