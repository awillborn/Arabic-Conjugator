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

  def adjust_first_radical
    @root1 = "آ"
  end

  def calculate_base
    if @root1 == "آ"
      "ت" + @root1 + @root2 + @root3
    else
      "ت" + @root1 + "ا" + @root2 + @root3
    end
  end

end