require_relative 'form_initializer'

class FormIII < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = @root1 + "ا" + @root2 + @root3
    @masdar = "الم" + @root1 + "ا" + @root2 + @root3 + "ة"
  end



  # def defective_past
  #   if @root3 == "و" && @pronoun == :he
  #     @root1 + "ا" + @root2 + "ا"
  #   elsif @root3 == "ي" && @pronoun == :he
  #     @root1 + "ا" + @root2 + "ى"
  #   elsif @pronoun == :they || @pronoun == :she
  #     @root1 + "ا" + @root2 + @past_pronouns[@pronoun]
  #   else
  #     @root1 + "ا" + @root2 + @root3 + @past_pronouns[@pronoun]
  #   end
  # end


  #form III defective present is regular
  #form III hollow past is regular
  #form III hollow present is regular

end

formIII = FormIII.new("ك", "ت", "ب", "past", :they)
p formIII.conjugate