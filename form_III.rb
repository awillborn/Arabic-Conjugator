require_relative 'form_initializer'

class FormIII
include FormInitializer

  def conjugate
    if @tense == "past"
      past
    elsif @tense == "present"
      @present_pronouns[@pronoun][0] + @root1 + "ا" + @root2 + @root3 + @present_pronouns[@pronoun][1]
    else
      "الم" + @root1 + "ا" + @root2 + @root3 + "ة"
    end
  end

  def past
    if @root3 == "و" || @root3 == "ي"
      defective_past
    else
      @root1 + "ا" + @root2 + @root3 + @past_pronouns[@pronoun]
    end
  end

  def defective_past
    if @root3 == "و" && @pronoun == :he
      @root1 + "ا" + @root2 + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      @root1 + "ا" + @root2 + "ى"
    elsif @pronoun == :they || @pronoun == :she
      @root1 + "ا" + @root2 + @past_pronouns[@pronoun]
    else
      @root1 + "ا" + @root2 + @root3 + @past_pronouns[@pronoun]
    end
  end


  #form III defective present is regular
  #form III hollow past is regular
  #form III hollow present is regular

end

formIII = FormIII.new("ك", "ت", "ب", "past", :they)
p formIII.conjugate