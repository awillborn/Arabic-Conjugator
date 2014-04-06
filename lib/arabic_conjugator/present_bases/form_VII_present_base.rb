# encoding: utf-8

class FormVIIPresentBase < Base

  def initialize(verb)
    super
    @base = "ن" + @root1 + @root2 + @root3
  end

  def hollow_base
    @root2 = "ا"
    "ن" + @root1 + @root2 + @root3
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

  def defective_base
    @base
  end


end