# encoding: utf-8

require_relative '../form'
require_relative '../factories/conjugator_factory'

class FormIII < Form

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = @root1 + "ا" + @root2 + @root3
    @masdar = "الم" + @root1 + "ا" + @root2 + @root3 + "ة"
  end

end
