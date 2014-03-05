require_relative 'form_initializer'

class FormI < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun = nil)
    super
    @base = @root1 + @root2 + @root3
    @masdar = "ال" + @base
  end

  def defective_past # form 1 - different from other forms
    if @root3 == "و" && @pronoun == :he
      #(base minus root3) + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      #(base minus root3) + "ى"
    elsif @pronoun == :they || @pronoun == :she
      #(base minus root3) + @past_pronouns[@pronoun]
    else
      @base + @past_pronouns[@pronoun]
    end
  end

  def hollow_past
    @root2 = "ا"
    @base = @root1 + @root2 + @root3
    super
  end

end

formI = FormI.new("ك", "ت", "ب", "past", :they)
p formI.conjugate
formI2 = FormI.new("ك", "ت", "ب", "masdar", :they)
p formI2.conjugate