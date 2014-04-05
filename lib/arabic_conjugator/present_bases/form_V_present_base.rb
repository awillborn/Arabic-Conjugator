# encoding: utf-8

class FormVPresentBase < Base

  def defective
    @root3 = "ى"
  end

  def regular_base
    "ت" + @root1 + @root2 + "ّ" + @root3
  end

end