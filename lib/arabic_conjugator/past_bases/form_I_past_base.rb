# encoding: utf-8
require_relative '../form_I_hamzated_past'
require_relative '../form_I_defective_past'
require_relative '../form_I_hollow_past'
require_relative '../base'

class FormIPastBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + @root3
  end

  def hollow_base
    if [:he, :she, :they].include?(@pronoun)
      return @root1 + "اء" if @root3 == "ئ"
      @root1 + (FORM_I_HOLLOW_PAST[@base] ||= "ا") + @root3
    else
      @root1 + @root3
    end
  end

  def defective_base
    base = @base[0...-1]
    if @pronoun == :he
      return base + FORM_I_DEFECTIVE_PAST[@base] if FORM_I_DEFECTIVE_PAST[@base]
      return base + "ا" if @root3 == "و"
      return base + "ى"
    elsif [:I, :you_m, :you_f, :you_pl].include?(@pronoun)
      @base
    else
      base
    end
  end

  def doubled_base
    return @base[0...-1] + "ّ" if [:he, :she, :they].include?(@pronoun)
    @base
  end

  def adjust_second_radical
    base = @root1 + @root2 + @root3
    @root2 = FORM_I_HAMZATED_PAST[base]
  end

  def adjust_third_radical
    base = @root1 + @root2 + @root3
    @root3 = FORM_I_HAMZATED_PAST[base]
  end
end
