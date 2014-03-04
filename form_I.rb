require_relative 'form_initializer'

class FormI < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = @root1 + @root2 + @root3
    @masdar = "ال" + @base
  end

  def defective_past
    if @root3 == "و" && @pronoun == :he
      @root1 + @root2 + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      @root1 + @root2 + "ى"
    elsif @pronoun == :they || @pronoun == :she
      @root1 + @root2 + @past_pronouns[@pronoun]
    else
      @base + @past_pronouns[@pronoun]
    end
  end

  def defective_present
    if [:you_f, :you_pl, :they].include?(pronoun)
      @present_pronouns[@pronoun][0] + @root1 + @root2 + @present_pronouns[@pronoun][1]
    else
      @present_pronouns[@pronoun][0] + @base + @present_pronouns[@pronoun][1]
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

formI = FormI.new("ك", "ت", "ب", "past", :they)
p formI.conjugate