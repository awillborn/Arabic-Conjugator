# encoding: utf-8

class FormIIIPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + "ا" + @root2 + @root3
  end

  def defective_base
    if [:you_pl, :they, :you_f].include?(@pronoun)
      @base[0...-1]
    else
      @base
    end
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