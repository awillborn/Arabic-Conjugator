# encoding: utf-8

require_relative '../base'

class FormXPastBase < Base

  def initialize(verb)
    super
    @base = "است" + @root1 + @root2 + @root3
  end

  def hollow_base
    @root2 = "ا"
    if [:he, :she, :they].include?(@pronoun)
      @base
    else
      "است" + @root1 + @root3
    end
  end

  def first_third_weak_base
    defective_base
  end

  def second_third_weak_base
    @base = @base[0...-1]
    if @pronoun == :he
      @base + "ا"
    elsif [:she, :they].include?(@pronoun)
      @base
    else
      @base + "ي"
    end
  end

  def adjust_first_radical
    @root1 = "أ"
  end

  def adjust_third_radical
    @root3 = "أ"
  end

end