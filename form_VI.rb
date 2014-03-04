require_relative 'form_initializer'

class FormVI
include FormInitializer

  def conjugate
    if @tense == "past"
      past(@root1, @root2, @root3, @pronoun)
    elsif @tense == "present"
      @present_pronouns[@pronoun][0] + "ت" + @root1 + "ا" + @root2 + @root3 + @present_pronouns[@pronoun][1]
    else
      "الت" + @root1 + "ا" + @root2 + @root3
    end
  end

  def past
    if @root3 == "ي" || @root3 == "و"
      defective_past
    else
      "ت" + @root1 + "ا" + @root2 + @root3 + @past_pronouns[@pronoun]
    end
  end

  def defective_past
    if @pronoun == :he
      "ت" + @root1 + "ا" + @root2 + "ى"
    else
      "ت" + @root1 + "ا" + @root2 + "ي" + @past_pronouns[@pronoun]
    end
  end

  def defective_present
  end

  #form VI hollow past is regular
  #form VI hollow present is regular
  #form VI weak past is regular
  #form VI weak present is regular

end