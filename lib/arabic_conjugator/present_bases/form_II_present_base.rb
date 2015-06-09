# encoding: utf-8

class FormIIPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + "ّ" + @root3
  end

  def defective_base
    return @base[0...-1] if [:you_pl, :they, :you_f].include?(@pronoun)
    @base
  end

  def doubled_base
    @base
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