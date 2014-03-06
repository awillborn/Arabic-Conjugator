#encoding: utf-8
PAST_PRONOUNS = { :I => "ت", :you_m => "ت", :you_f => "ت", :she => "ت" , :he =>'', :we => "نا", :you_pl => "تم", :they => "وا" }
PRESENT_PRONOUNS = { :I => ["أ", ''], :you_m => ["ت", ''], :you_f => ["ت", "ين"], :he => ["ي", ""], :she => ["ت", ""], :we => ["ن", ''], :you_pl => ["ت", "ون"], :they => ["ي", "ون"] }

class FormInitializer
  def initialize(root1, root2, root3, tense, pronoun = nil)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @tense = tense
    @pronoun = pronoun
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
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

  def present
    if @root2 == @root3
      doubled_present
    elsif @root2 == "و" || @root2 == "ي"
      hollow_present
    else
      PRESENT_PRONOUNS[@pronoun][0] + @base + PRESENT_PRONOUNS[@pronoun][1]
    end
  end

  def defective_past #form 2, 3, 4, 5, 6, 7, 8, 10
    @base = @base[0...-1]
    if @pronoun == :he
      @base + "ى"
    elsif [:she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base + "ي" + PAST_PRONOUNS[@pronoun]
    end
  end

  def defective_present #form 1, 2, 3, 4, 7, 8, 10
    if [:you_f, :you_pl, :they].include?(@pronoun)
      PRESENT_PRONOUNS[@pronoun][0]  #(base - root3) + PRESENT_PRONOUNS[@pronoun][1]
    else
      PRESENT_PRONOUNS[@pronoun][0] + @base + PRESENT_PRONOUNS[@pronoun][1]
    end
  end

  def hollow_past #root2 changed in 1, 4, 7, 8, 10
    if [:he, :she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base.delete!(@root2)
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

  def hollow_present #regular except for form VII and VIII
    PRESENT_PRONOUNS[@pronoun][0] + @base + PRESENT_PRONOUNS[@pronoun][1]
  end

  ###########

  def doubled_past
    @root1 + @root2 + "ّ" + PAST_PRONOUNS[@pronoun]
  end

  def doubled_present
    PRESENT_PRONOUNS[@pronoun][0] + @root1 + @root2 + "ّ" + PRESENT_PRONOUNS[@pronoun][1]
  end

end
