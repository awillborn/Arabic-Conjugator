require_relative 'form_initializer'

class FormV
include FormInitializer

  def conjugate(@root1, @root2, @root3, @tense, @pronoun)
    if @tense == "past"
      past
    elsif  @tense == "present"
      @present_pronouns[@pronoun][0] + "ت" + @root1 + @root2 + @root3 + @present_pronouns[@pronoun][1]
    else
      "الت" + three_roots
    end
  end

  def past
    if @root3 == "ي" || @root3 == "و"
      defective_past
    else
      "ت" + three_roots + @past_pronouns[@pronoun]
    end
  end

  def defective_past
    if @pronoun == :he
      "ت" + @root1 + @root2 + "ى"
    else
      "ت" + @root1 + @root2 + "ي" + @past_pronouns[@pronoun]
    end
  end

  def defective_present
  end

  #form V hollow past is regular
  #form V hollow present is regular
  #form V weak past is regular
  #form V weak present is regular


end
