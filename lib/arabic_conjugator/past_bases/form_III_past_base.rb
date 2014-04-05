# encoding: utf-8

require_relative '../base'

class FormIIIPastBase < Base

  def regular_base
    @base
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