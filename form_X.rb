require_relative 'form_initializer'

class FormX
include FormInitializer

  def conjugate
    if @tense == "past"
      past
    elsif @tense == "present"
      @present_pronouns[@pronoun][0] + "ست" + three_roots + @present_pronouns[@pronoun][1]
    else
      "الاست" + three_roots #tense == "masdar"
    end
  end

  def past
    if @root3 == "و" || @root3 == "ي"
      defective_past
    elsif root2 == "و"  || root2 == "ي"
      hollow_past
    else
      "است" + three_roots + @past_pronouns[pronoun]
    end
  end

  def defective_past
    if pronoun == :he
      "است" + @root1 + @root2 + "ى"
    else
      "است" + @root1 + @root2 + "ي" + @past_pronouns[pronoun]
    end
  end

  def hollow_past
    if [:he, :she, :they].include?(pronoun)
      "است" + @root1 + "ا" + @root3 + @past_pronouns[pronoun]
    else
      "است" + @root1 + @root3 + @past_pronouns[pronoun]
    end
  end

  def form_X_defective_present
  end

  #form_X_hollow_present
end