require_relative 'form_initializer'

class FormIV
include FormInitializer

  def conjugate
    if @tense == "past"
      past
    elsif @tense == "present"
      @present_pronouns[@pronoun][0] + @root1 + @root2 + @root3 + @present_pronouns[@pronoun][1]
    else #tense == masdar
      "الإ" + @root1 + @root2 + "ا" + @root3
    end
  end

  def past
    if @root3 == "و" || @root3 == "ي"
      defective_past
    else
      "أ" + three_roots + @past_pronouns[@pronoun]
    end
  end

  def defective_past
    if @root3 == "و" && @pronoun == :he
      "أ" + @root1 + @root2 + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      "أ" + @root1 + @root2 + "ى"
    elsif @pronoun == :they || @pronoun == :she
      "أ" + @root1 + @root2 + @past_pronouns[@pronoun]
    else
      "أ" + three_roots + @past_pronouns[@pronoun]
    end
  end

  def defective_present
    ##not regular for anti, hom, antum
  end

  #form IV hollow past is regular
  #form IV hollow present is regular

end