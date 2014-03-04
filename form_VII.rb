require_relative 'form_initializer'

class FormVII
include FormInitializer

  def conjugate
    if @tense == "past"
      past
    elsif @tense == "present"
      @present_pronouns[@pronoun][0] + "ن" + @root1 + @root2 + @root3 + @present_pronouns[@pronoun][1]
    else
      "الان" + @root1 + @root2 + "ا" + @root3
    end
  end

  def past
    if @root2 == "و" || @root2 == "ي"
      hollow_past
    elsif @root3 == "ي" || @root3 == "و"
      defective_past
    else
      "ان" + three_roots + @past_pronouns[@pronoun]
    end
  end

  def defective_past
    if pronoun == :he
      "ان" + @root1 + @root2 + "ى"
    else
      "ان" + @root1 + @root2 + "ي" + @past_pronouns[@pronoun]
    end
  end

  def defective_present
    if
    else

    end
  end

  def hollow_past
    if [:he, :she, :they].include?(@pronoun)
      "ان" + @root1 + "ا" + @root3 + @past_pronouns[@pronoun]
    else
      "ان" + @root1 + @root3 + @past_pronouns[@pronoun]
    end

  end

  #form VII hollow_present
  #form VII weak_past
  #form VII weak_present


end