# encoding: utf-8
require_relative '../form_I_hamzated'
require_relative '../form_I_defective'
require_relative '../base'

class FormIPastBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + @root3
  end

  def hollow_base
    if [:he, :she, :they].include?(@pronoun)
      if @root3 == "ئ"
         @root1 + "اء"
      else
        @root1 + "ا" + @root3
      end
    else
      @root1 + @root3
    end
  end

  def defective_base
    base = @base[0...-1]
    if @pronoun == :he
      return base + "ا" if (@root3 == "و")
      base + (FORM_I_DEFECTIVE[@base] ||= "ى")
    else
      base
    end
  end

  def doubled_base
    if [:he, :she, :they].include?(@pronoun)
      @base[0...-1] + "ّ"
    else
      @base
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