# encoding: utf-8

require_relative '../form'
require_relative '../factories/conjugator_factory'

class FormII < Form

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = @root1 + @root2 + "ّ" + @root3
    @masdar = "الت" + @root1 + @root2 + "ي" + @root3
  end

end
