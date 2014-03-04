require_relative 'form_initializer'

class FormIV < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = "أ" + @root1 + @root2 + @root3
    @masdar = "الإ" + @root1 + @root2 + "ا" + @root3
  end


  # def defective_past
  #   if @root3 == "و" && @pronoun == :he
  #     "أ" + @root1 + @root2 + "ا"
  #   elsif @root3 == "ي" && @pronoun == :he
  #     "أ" + @root1 + @root2 + "ى"
  #   elsif @pronoun == :they || @pronoun == :she
  #     "أ" + @root1 + @root2 + @past_pronouns[@pronoun]
  #   else
  #     @base + @past_pronouns[@pronoun]
  #   end
  # end

  # def defective_present
  #   ##not regular for anti, hom, antum
  # end

  #form IV hollow past is regular
  #form IV hollow present is regular

end