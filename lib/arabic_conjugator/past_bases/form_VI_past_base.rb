# encoding: utf-8

require_relative '../base'

class FormVIPastBase < Base

  def initialize(verb)
    super
    @base = calculate_base
  end

  def defective_base
    @base = @base[0...-1]
    if @root3 == "و" && @pronoun == :he
      @base + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      @base + "ى"
    end
  end

  def adjust_first_radical
    @root1 = "آ"
  end

  def adjust_second_radical
    @root2 = "ء"
  end

  def adjust_third_radical
    @root3 = "أ"
  end

  def calculate_base
    if @root1 == "آ"
      "ت" + @root1 + @root2 + @root3
    else
      "ت" + @root1 + "ا" + @root2 + @root3
    end
  end

end
