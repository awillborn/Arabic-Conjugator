# encoding: utf-8

require_relative '../form'
require_relative '../factories/conjugator_factory'

class FormVII < Form

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = "ان" + @root1 + @root2 + @root3
    @masdar = "الان" + @root1 + @root2 + "ا" + @root3
  end

end