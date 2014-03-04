require_relative 'form_initializer'

class FormI
include FormInitializer

  def conjugate
    if @tense == "past"
      past
    elsif @tense == "present"
      present
    else #tense == masdar
      "ال" + three_roots
    end
  end

  def past
    if @root2 == "و" || @root2 == "ي"
      hollow_past
    elsif @root3 == "و" || @root3 == "ي"
      defective_past
    elsif @root2 == @root3
      doubled_past
    else
      three_roots + @past_pronouns[@pronoun]
    end
  end

  def present
    if @root1 == "و" || @root1 == "ي"
      weak_present
    elsif @root2 == @root3
      doubled_present
    else
      @present_pronouns[@pronoun][0] + three_roots + @present_pronouns[@pronoun][1]
    end
  end


  def defective_past
    if @root3 == "و" && @pronoun == :he
      @root1 + @root2 + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      @root1 + @root2 + "ى"
    elsif @pronoun == :they || @pronoun == :she
      @root1 + @root2 + @past_pronouns[@pronoun]
    else
      three_roots + @past_pronouns[@pronoun]
    end
  end

  def defective_present
    if [:you_f, :you_pl, :they].include?(pronoun)
      @present_pronouns[@pronoun][0] + @root1 + @root2 + @present_pronouns[@pronoun][1]
    else
      @present_pronouns[@pronoun][0] + three_roots + @present_pronouns[@pronoun][1]
    end
  end

  def hollow_past
    if [:he, :she, :they].include?(@pronoun)
      @root1 + "ا" + @root3 + @past_pronouns[@pronoun]
    else
      @root1 + @root3 + @past_pronouns[@pronoun]
    end
  end

  def weak_present
    @present_pronouns[@pronoun][0] + @root2 + @root3 + @present_pronouns[@pronoun][1]
  end

  def doubled_present
    @present_pronouns[@pronoun][0] + @root1 + @root2 + "ّ" + @present_pronouns[@pronoun][1]
  end

  def doubled_past
    @root1 + @root2 + "ّ" + @past_pronouns[@pronoun]
  end

  #form I hollow present is regular
  #form I weak past is regular


end