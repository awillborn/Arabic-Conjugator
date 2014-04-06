# encoding: utf-8

require_relative '../base'

class FormIPastBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + @root3
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

  def doubled_base
    if [:he, :she, :they].include?(@pronoun)
      @base[0...-1] + "ّ"
    else
      @base
    end
  end

end