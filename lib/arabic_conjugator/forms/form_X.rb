# encoding: utf-8

require_relative '../form'
require_relative '../factories/conjugator_factory'

class FormX < Form

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = "است" + @root1 + @root2 + @root3
    @masdar = "الاست" + @root1 + @root2 + "ا" + @root3
  end

end