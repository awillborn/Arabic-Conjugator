# encoding: utf-8

class FormVPresentBase < Base

  def initialize(verb)
    super
    @base = "ت" + @root1 + @root2 + "ّ" + @root3
  end

  def defective
    @root3 = "ى"
  end

  def regular_base
    @base
  end


end