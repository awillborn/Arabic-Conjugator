# encoding: utf-8
require_relative '../form_I_hamzated_present'
require_relative '../form_I_hollow_present'
require_relative '../form_I_defective_present'
require_relative '../base'

class FormIPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + @root3
  end

  def assimilated_base
    @root2 + @root3
  end

  def hollow_base
    @base = @root1 + FORM_I_HOLLOW_PRESENT[@base] + @root3 if FORM_I_HOLLOW_PRESENT[@base]
    super
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

  def defective_base
    base = @base[0...-1]
    return base if [:you_pl, :they, :you_f].include?(@pronoun)
    base + (FORM_I_DEFECTIVE_PRESENT[@base] ||= @root3)
  end

  def assimilated_defective_base
    return @root2 if [:you_pl, :they, :you_f].include?(@pronoun)
    @root2 + @root3
  end

  def adjust_second_radical
    base = @root1 + @root2 + @root3
    @root2 = FORM_I_HAMZATED_PRESENT[base]
  end

  def adjust_third_radical
    base = @root1 + @root2 + @root3
    @root3 = FORM_I_HAMZATED_PRESENT[base]
  end
end
