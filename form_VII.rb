require_relative 'form_initializer'

class FormVII < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun = nil)
    super
    @base = "ان" + @root1 + @root2 + @root3
    @masdar = "الان" + @root1 + @root2 + "ا" + @root3
  end

  def present
    @base = "ن" + @root1 + @root2 + @root3
    super
  end

  def hollow_past
    @root2 = "ا"
    @base = @root1 + @root2 + @root3
    super
  end

  def hollow_present
    @root2 = "ا"
    @base = "ن" + @root1 + @root2 + @root3
    super
  end

end