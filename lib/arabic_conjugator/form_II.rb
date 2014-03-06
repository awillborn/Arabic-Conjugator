#encoding: utf-8
require_relative 'form_initializer'

class FormII < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun = nil)
    super
    @base = @root1 + @root2 + "ّ" + @root3
    @masdar = "الت" + @root1 + @root2 + "ي" + @root3
  end

end
