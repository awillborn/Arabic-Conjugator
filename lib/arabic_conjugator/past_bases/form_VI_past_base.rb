# encoding: utf-8

require_relative '../base'

class FormVIPastBase < Base

  def initialize(verb)
    super
    @base =  "ت" + @root1 + "ا" + @root2 + @root3
  end

  def defective_base
    @base = @base[0...-1]
    if @root3 == "و" && @pronoun == :he
      @base + "ا"
    elsif @root3 == "ي" && @pronoun == :he
      @base + "ى"
    end
  end

end
