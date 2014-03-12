# encoding: utf-8


module PresentTense

  def regular_present
    PRESENT_PRONOUNS[@pronoun][0] + @base + PRESENT_PRONOUNS[@pronoun][1]
  end


  def defective_present
    if [:you_f, :you_pl, :they].include?(@pronoun)
      PRESENT_PRONOUNS[@pronoun][0]  #(base - root3) + PRESENT_PRONOUNS[@pronoun][1]
    else
      PRESENT_PRONOUNS[@pronoun][0] + @base + PRESENT_PRONOUNS[@pronoun][1]
    end
  end

  def hollow_present
    PRESENT_PRONOUNS[@pronoun][0] + @base + PRESENT_PRONOUNS[@pronoun][1]
  end

  def doubled_present
    PRESENT_PRONOUNS[@pronoun][0] + @root1 + @root2 + "ّ" + PRESENT_PRONOUNS[@pronoun][1]
  end

end