# encoding: utf-8

require_relative '../base'

class FormVPastBase < Base

  def initialize(verb)
    super
    @base = "ت" + @root1 + @root2 + "ّ" + @root3
  end

  def defective_base
    @new_base = @base[0...-1]
    if @root3 == "و" && @pronoun == :he
      @new_base + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      @new_base + "ى"
    else
      @base
    end
  end

  def doubled_base
    @base
  end

  def adjust_second_radical
    @root2 = "أ"
  end

  def adjust_third_radical
    @root3 = "أ"
  end

end
