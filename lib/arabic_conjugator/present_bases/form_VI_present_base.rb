# encoding: utf-8


# encoding: utf-8

class FormVIPresentBase < Base

  def initialize(verb)
    super
    @base = calculate_base
  end

  def defective_base
    if [:you_f, :you_pl, :they].include?(@pronoun)
      @base[0...-1]
    else
      @base[0...-1] + "ى"
    end
  end

  def first_third_weak_base
    defective_base
  end

  def second_third_weak_base
    defective_base
  end

  def adjust_first_radical
    @root1 = "آ"
  end

  def adjust_second_radical
    @root2 = "ء"
  end

  def adjust_third_radical
    if [:they, :you_pl].include?(@pronoun)
      @root3 = "ؤ"
    elsif @pronoun == :you_f
      @root3 == "ئ"
    else
      @root3 == "أ"
    end
  end

  def calculate_base
    if @root1 == "آ"
      "ت" + @root1 + @root2 + @root3
    else
      "ت" + @root1 + "ا" + @root2 + @root3
    end
  end

end