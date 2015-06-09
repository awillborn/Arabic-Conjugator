# encoding: utf-8

require_relative '../base'

class FormXPastBase < Base

  def initialize(verb)
    super
    @base = "است" + @root1 + @root2 + @root3
  end

  def hollow_base
    @root2 = "ا"
    return @base if [:he, :she, :they].include?(@pronoun)
    "است" + @root1 + @root3
  end

  def hollow_defective_base
    @base = @base[0...-1]
    return @base + "ا" if @pronoun == :he
    return @base if [:she, :they].include?(@pronoun)
    @base + "ي"
  end

  def adjust_second_radical
    @root2 = "أ"
  end

  def adjust_third_radical
    @root3 = "أ"
  end
end