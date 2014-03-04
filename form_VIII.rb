require_relative 'form_initializer'

class FormVIII
include FormInitializer

  def conjugate
    if @tense == "past"
      past
    elsif @tense == "present"
      present
    else
      "الا" + @root1 + "ت" + @root2 + "ا" + @root3
    end
  end

  def past
    if @root2 == "و" || @root2 == "ي"
      hollow_past
    elsif (@root3 == "ي" || @root3 == "و")
      defective_past
    else
      "ا" + @root1 + "ت" + @root2 + @root3 + @past_pronouns[@pronoun]
    end
  end

  def present
    if @root1 == "و" || @root1 == "ي"
      @present_pronouns[@pronoun][0] + "ت" + @root2 + @root3 + @present_pronouns[@pronoun][1]
    else
      @present_pronouns[@pronoun][0] + @root1 + "ت" + @root2 + @root3 + @present_pronouns[@pronoun][1]
    end
  end

  def defective_past
    if @pronoun == :he
      "ا" + @root1 + "ت" + @root2 + "ى"
    else
      "ا" + @root1 + "ت" + @root2 + "ي" + @past_pronouns[@pronoun]
    end
  end

  def defective_present
    if
    else

    end
  end


  def hollow_past
    if [:he, :she, :they].include?(@pronoun)
      "ا" + @root1 + "تا" + @root3 + @past_pronouns[@pronoun]
    else
      "ا" + @root1 + "ت" + @root3 + @past_pronouns[@pronoun]
    end
  end

  #form VIII hollow present

  def weak_past
  end

  def weak_present
  end

end