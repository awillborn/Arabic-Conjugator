# encoding: utf-8

class FormIVPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + @root3
  end

  def defective_base
    if [:you_pl, :they, :you_f].include?(@pronoun)
      @base[0...-1]
    else
      @base
    end
  end

  def hollow_base
    if @root3 == "ئ" && [:I, :you_m, :he, :she, :we].include?(@pronoun)
      @root1 + "يء"
    elsif @root3 == "ئ" && [:you_pl, :they].include?(@pronoun)
      @root1 + "يؤ"
    else
      @root1 + "ي" + @root3
    end
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