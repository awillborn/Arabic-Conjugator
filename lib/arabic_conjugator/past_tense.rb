# encoding: utf-8

class Past

  def initialize(form)
    @base = form.base
    @root1 = form.root1
    @root2 = form.root2
    @root3 = form.root3
    @type = form.type
    @pronoun = form.pronoun
  end

  def conjugate
    self.send(@type[0])
  end

  def regular
    @base + PAST_PRONOUNS[@pronoun]
  end

  def defective
    @base = @base[0...-1]
    if @pronoun == :he
      @base + "ى"
    elsif [:she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base + "ي" + PAST_PRONOUNS[@pronoun]
    end
  end

  def hollow
    if [:he, :she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base.delete!(@root2)
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

  def doubled
    @root1 + @root2 + "ّ" + PAST_PRONOUNS[@pronoun]
  end
end