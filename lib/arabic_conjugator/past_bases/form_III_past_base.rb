# encoding: utf-8

require_relative '../base'

class FormIIIPastBase < Base

  def initialize(verb)
    super
    @base = calculate_base
  end

  def defective_base
    if @root3 == "و" && @pronoun == :he
      @base[0...-1] + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      @base[0...-1] + "ى"
    else
      @base
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
      @root1 + @root2 + @root3
    else
      @root1 + "ا" + @root2 + @root3
    end
  end

end