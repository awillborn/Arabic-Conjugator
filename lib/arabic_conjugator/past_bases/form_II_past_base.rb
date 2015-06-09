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
    return @base + FORM_II_HOLLOW_DEFECTIVE[roots] if @pronoun == :he
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