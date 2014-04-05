# encoding: utf-8

class FormVIIIPresentBase < Base

  def regular_base
    @root1 + "ت" + @root2 + @root3
  end

  def hollow_base
    @root2 = "ا"
    @root1 + "ت" + @root2 + @root3
  end

  def assimilated_base
    "تّ" + @root2 + @root3
  end

end