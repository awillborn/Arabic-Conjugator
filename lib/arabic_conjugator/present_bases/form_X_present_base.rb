# encoding: utf-8

class FormXPresentBase < Base

  def initialize(verb)
    super
    @base = "ست" + @root1 + @root2 + @root3
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

  def defective_base
    if [:you_pl, :they, :you_f].include?(@pronoun)
      @base[0...-1]
    else
      @base
    end
  end

  def adjust_third_radical
    @root3 = "ئ"
  end

end