class FormInitializer
  def initialize(root1, root2, root3, tense, pronoun)
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
    else
      @present_pronouns[@pronoun][0] + @base + @present_pronouns[@pronoun][1]
    end
  end

end
