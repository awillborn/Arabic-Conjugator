# encoding: utf-8

class FormVIIIPresentBase < Base

  def initialize(verb)
    super
    @base =  @root1 + "ت" + @root2 + @root3
  end

  def regular_base
    @base
  end

  def hollow_base
    @root2 = "ا"
    @root1 + "ت" + @root2 + @root3
  end

  def assimilated_base
    "تّ" + @root2 + @root3
  end

end