# encoding: utf-8

class FormVIIPresentBase < Base

  def initialize(verb)
    super
    @base = "ن" + @root1 + @root2 + @root3
  end

  def hollow_base
    @root2 = "ا"
    "ن" + @root1 + @root2 + @root3
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

  def defective_base
    if [:you_f, :you_pl, :they].include?(@pronoun)
      @base[0...-1]
    else
      @base[0...-1] + "ي"
    end
  end

  def adjust_first_radical
    @root1 = "أ"
  end

  def adjust_third_radical
    @root3 = "ئ"
  end

end