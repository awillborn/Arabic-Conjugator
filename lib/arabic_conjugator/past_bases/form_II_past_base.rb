# encoding: utf-8
require_relative '../form_II_hollow_defective'
require_relative '../base'

class FormIIPastBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + "ّ" + @root3
  end

  def doubled_base
    @base
  end

  def hollow_defective_base
    @base = @base[0...-1]
    roots = @root1 + @root2 + @root3
    if @pronoun == :he
      @base + FORM_II_HOLLOW_DEFECTIVE[roots]
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