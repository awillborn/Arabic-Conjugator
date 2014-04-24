# encoding: utf-8
require_relative '../form_I_hamzated'
require_relative '../form_I_hollow'
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
    @base = @root1 + FORM_I_HOLLOW[@base] + @root3 if FORM_I_HOLLOW[@base]
    super
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

  def defective_base
    if [:you_pl, :they, :you_f].include?(@pronoun)
      @base[0...-1]
    else
      @base
    end
  end

  def assimilated_defective_base
    if [:you_pl, :they, :you_f].include?(@pronoun)
      @root2
    else
      @root2 + @root3
    end
  end

  def adjust_second_radical
    base = @root1 + @root2 + @root3
    @root2 = FORM_I_HAMZATED[base]
  end

  def adjust_third_radical
    base = @root1 + @root2 + @root3
    @root3 = FORM_I_HAMZATED[base]
  end

end