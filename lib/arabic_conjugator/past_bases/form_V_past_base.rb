# encoding: utf-8

require_relative '../base'

class FormVPastBase < Base

  def initialize(verb)
    super
    @base = "ت" + @root1 + @root2 + "ّ" + @root3
  end

  def defective_base
    if @pronoun == :he
      return @base[0...-1] + "ا" if @root3 == "و"
      @base[0...-1] + "ى"
    elsif [:she, :they].include?(@pronoun)
      @base[0...-1]
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
