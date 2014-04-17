# encoding: utf-8

class FormVPresentBase < Base

  def initialize(verb)
    super
    @base = "ت" + @root1 + @root2 + "ّ" + @root3
  end

  def doubled_base
    @base
  end

  def defective_base
    if [:you_f, :you_pl, :they].include?(@pronoun)
      @base[0...-1]
    else
      @base[0...-1] + "ى"
    end
  end

  def adjust_second_radical
    @root2 = "أ"
  end

  def adjust_third_radical
    @root3 = "أ"
  end

end