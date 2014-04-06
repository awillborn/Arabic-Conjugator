# encoding: utf-8

class FormVPresentBase < Base

  def initialize(verb)
    super
    @base = "ت" + @root1 + @root2 + "ّ" + @root3
  end

  def regular_base
    @base
  end

  def doubled_base
    @base
  end

end