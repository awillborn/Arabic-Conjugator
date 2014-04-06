# encoding: utf-8

class FormXPresentBase < Base

  def initialize(verb)
    super
    @base = "ست" + @root1 + @root2 + @root3
  end

  def regular_base
    @base
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

end