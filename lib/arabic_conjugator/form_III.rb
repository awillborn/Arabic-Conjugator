# encoding: utf-8

require_relative 'form_initializer'

class FormIII < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun = nil)
    super
    @base = @root1 + "ا" + @root2 + @root3
    @masdar = "الم" + @root1 + "ا" + @root2 + @root3 + "ة"
  end
end
