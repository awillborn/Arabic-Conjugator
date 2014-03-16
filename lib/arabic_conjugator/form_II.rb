# encoding: utf-8

require_relative 'form'

class FormII < Form

  def initialize(root1, root2, root3, tense, pronoun, type)
    super
    @base = @root1 + @root2 + "ّ" + @root3
    @masdar = "الت" + @root1 + @root2 + "ي" + @root3
  end

end
