# encoding: utf-8

class FormIVPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + @root3
  end

  def defective_base
    return @base[0...-1] if [:you_pl, :they, :you_f].include?(@pronoun)
    @base
  end

  def assimilated_base
    "و" + @base[1..-1]
  end

  def hollow_base
    return @root1 + "يء" if @root3 == "ئ" && [:I, :you_m, :he, :she, :we].include?(@pronoun)
    return @root1 + "يؤ" if @root3 == "ئ" && [:you_pl, :they].include?(@pronoun)
    @root1 + "ي" + @root3
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

  def adjust_first_radical
    @root1 = "ؤ"
  end

  def adjust_second_radical
    @root2 = "ئ"
  end

  def adjust_third_radical
    @root3 = "ئ"
  end
end
