# encoding: utf-8

class Present

  def initialize(form)
    @base = form.base
    @root1 = form.root1
    @root2 = form.root2
    @root3 = form.root3
    @type = form.type
    @pronoun = form.pronoun
  end

  def conjugate
    self.send(@type)
  end

  def regular
    PRESENT_PRONOUNS[@pronoun][0] + @base + PRESENT_PRONOUNS[@pronoun][1]
  end

  def defective
    if [:you_f, :you_pl, :they].include?(@pronoun)
      PRESENT_PRONOUNS[@pronoun][0]  #(base - root3) + PRESENT_PRONOUNS[@pronoun][1]
    else
      PRESENT_PRONOUNS[@pronoun][0] + @base + PRESENT_PRONOUNS[@pronoun][1]
    end
  end

  def hollow
    PRESENT_PRONOUNS[@pronoun][0] + @base + PRESENT_PRONOUNS[@pronoun][1]
  end

  def doubled
    PRESENT_PRONOUNS[@pronoun][0] + @root1 + @root2 + "ّ" + PRESENT_PRONOUNS[@pronoun][1]
  end

end