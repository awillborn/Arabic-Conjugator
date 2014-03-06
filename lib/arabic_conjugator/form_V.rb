#encoding: utf-8
require_relative 'form_initializer'

class FormV < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun = nil)
    super
    @base = "ت" + @root1 + @root2 + "ّ" + @root3
    @masdar = "ال" + @base
  end


  def defective_present #form 5
    @root3 = "ى"
    super
  end

end
