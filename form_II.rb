require_relative 'form_initializer'

class FormII < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = @root1 + @root2 + "ّ" + @root3
    @masdar = "الت" + @root1 + @root2 + "ي" + @root3
  end


  #form II defective present is regular -- is it though?
  #form II hollow past is regular
  #form II hollow present is regular

end

formII = FormII.new("ك", "ت", "ب", "past", :they)
p formII.conjugate