# encoding: utf-8

class FormIVPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + @root3
  end

  def regular_base
    @base
  end

  def defective_base
    if [:you_pl, :they, :you_f].include?(@pronoun)
      @base[0...-1]
    else
      @base
    end
  end

  def hollow_base
    @root1 + "ي" + @root3
  end

  def assimilated_base
    @base
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

end