# encoding: utf-8

class FormVIIPresentBase < Base

  def regular_base
    "ن" + @root1 + @root2 + @root3
  end

  def hollow_base
    @root2 = "ا"
    "ن" + @root1 + @root2 + @root3
  end


end