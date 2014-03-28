# encoding: utf-8

require_relative '../form'
require_relative '../factories/conjugator_factory'

class FormIV < Form

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = "أ" + @root1 + @root2 + @root3
    @masdar = "الإ" + @root1 + @root2 + "ا" + @root3
  end

end