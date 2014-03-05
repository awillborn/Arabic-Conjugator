class FormInitializer
  def initialize(root1, root2, root3, tense, pronoun = nil)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @tense = tense
    @pronoun = pronoun
    @past_pronouns = { :I => "ت", :you => "ت", :she => "ت" , :he =>'', :we => "نا", :you_pl => "تم", :they => "وا" }
    @present_pronouns = { :I => ["أ", ''], :you_m => ["ت", ''], :you_f => ["ت", "ين"], :he => ["ي", ""], :she => ["ت", ""], :we => ["ن", ''], :you_pl => ["ت", "ون"], :they => ["ي", "ون"] }
  end

  def conjugate
    if @tense == "past"
      past
    elsif @tense == "present"
      present
    else #tense == masdar
      @masdar
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
      @base + @past_pronouns[@pronoun]
    end
  end

  def present
    if @root1 == "و" || @root1 == "ي"
      weak_present
    elsif @root2 == @root3
      doubled_present
    elsif @root2 == "و" || @root2 == "ي"
      hollow_present
    else
      @present_pronouns[@pronoun][0] + @base + @present_pronouns[@pronoun][1]
    end
  end

  def defective_past #form 2, 3, 4, 5, 6, 7, 8, 10
    if @pronoun == :he
      #(base minus root3) + "ى"
    elsif [:she, :they].include?(@pronoun)
      #(base minus root3) + @past_pronouns[@pronoun]
    else
      #(base minus root3) + "ي" + @past_pronouns[@pronoun]
    end
  end

  def defective_present #form 1, 2, 3, 4, 7, 8, 10
    if [:you_f, :you_pl, :they].include?(@pronoun)
      @present_pronouns[@pronoun][0]  #(base - root3) + @present_pronouns[@pronoun][1]
    else
      @present_pronouns[@pronoun][0] + @base + @present_pronouns[@pronoun][1]
    end
  end

  def hollow_past #root2 changed in 1, 4, 7, 8, 10
    if [:he, :she, :they].include?(@pronoun)
      @base + @past_pronouns[@pronoun]
    else
      #(base - root2) + @past_pronouns[@pronoun]
    end
  end

  def hollow_present #regular except for form VII and VIII
    @present_pronouns[@pronoun][0] + @base + @present_pronouns[@pronoun][1]
  end

  ###########

  def weak_present
    @present_pronouns[@pronoun][0] + @root2 + @root3 + @present_pronouns[@pronoun][1]
  end

  def doubled_present
    @present_pronouns[@pronoun][0] + @root1 + @root2 + "ّ" + @present_pronouns[@pronoun][1]
  end

  def doubled_past
    @root1 + @root2 + "ّ" + @past_pronouns[@pronoun]
  end

end
