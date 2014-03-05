require_relative 'form_initializer'

class FormX < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun = nil)
    super
    @base = "است" + @root1 + @root2 + @root3
    @masdar = "الاست" + @root1 + @root2 + "ا" + @root3
  end

  def present
    @base = "ست" + @root1 + @root2 + @root3
    super
  end

  def hollow_past
    @root2 = "ا"
    @base = @root1 + @root2 + @root3
    super
  end

  # def form_X_defective_present
  # end

  # #form_X_hollow_present
end