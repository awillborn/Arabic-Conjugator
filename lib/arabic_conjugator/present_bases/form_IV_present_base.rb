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

end