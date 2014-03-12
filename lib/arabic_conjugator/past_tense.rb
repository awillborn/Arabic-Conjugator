# encoding: utf-8

module PastTense

  def regular_past
    @base + PAST_PRONOUNS[@pronoun]
  end

  def defective_past
    @base = @base[0...-1]
    if @pronoun == :he
      @base + "ى"
    elsif [:she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base + "ي" + PAST_PRONOUNS[@pronoun]
    end
  end

  def hollow_past
    if [:he, :she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base.delete!(@root2)
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

  def doubled_past
    @root1 + @root2 + "ّ" + PAST_PRONOUNS[@pronoun]
  end
end