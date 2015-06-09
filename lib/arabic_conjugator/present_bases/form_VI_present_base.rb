# encoding: utf-8


# encoding: utf-8

class FormVIPresentBase < Base

  def initialize(verb)
    super
    @base = calculate_base
  end

  def defective_base
    return @base[0...-1] if [:you_f, :you_pl, :they].include?(@pronoun)
    @base[0...-1] + "ى"
  end

  def adjust_first_radical
    @root1 = "آ"
  end

  def adjust_second_radical
    @root2 = "ء"
  end

  def adjust_third_radical
    return @root3 = "ؤ" if [:they, :you_pl].include?(@pronoun)
    return @root3 == "ئ" if @pronoun == :you_f
    @root3 == "أ"
  end

  def calculate_base
    return "ت" + @root1 + @root2 + @root3 if @root1 == "آ"
    "ت" + @root1 + "ا" + @root2 + @root3
  end

end