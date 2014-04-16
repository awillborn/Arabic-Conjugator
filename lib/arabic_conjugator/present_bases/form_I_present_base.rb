# encoding: utf-8
require_relative '../form_I_hamzated'
require_relative '../base'

class FormIPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + @root3
  end

  def assimilated_base
    @root2 + @root3
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

  def first_third_weak_base
    if [:you_pl, :they, :you_f].include?(@pronoun)
      @root2
    else
      @root2 + @root3
    end
  end

  def second_third_weak_base
    defective_base
  end

  def adjust_first_radical
    @root1 = "أ"
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