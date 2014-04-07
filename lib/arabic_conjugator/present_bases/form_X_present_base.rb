# encoding: utf-8

class FormXPresentBase < Base

  def initialize(verb)
    super
    @base = "ست" + @root1 + @root2 + @root3
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

  def adjust_first_radical
    @root1 = "أ"
  end

  def adjust_third_radical
    @root3 = "ئ"
  end

end