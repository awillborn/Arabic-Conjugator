require_relative 'form_initializer'

class FormVI < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun = nil)
    super
    @base = "ت" + @root1 + "ا" + @root2 + @root3
    @masdar = "ال" + @base
  end


  def defective_present
    @root3 = "ى"
    super
  end

end