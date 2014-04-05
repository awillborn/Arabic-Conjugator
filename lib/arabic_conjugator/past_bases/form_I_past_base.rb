# encoding: utf-8

require_relative '../base'

class FormIPastBase < Base

  def regular_base
    @base
  end

  def assimilated_base
    @base
  end

  def hollow_base
    @root2 = "ا"
    @root1 + @root2 + @root3
  end

  def defective_base
    @base = @base[0...-1]
    if @root3 == "و" && @pronoun == :he
      @base + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      @base + "ى"
    else
      @base
    end
  end

end