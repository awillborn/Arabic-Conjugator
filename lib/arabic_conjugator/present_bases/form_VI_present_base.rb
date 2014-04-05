# encoding: utf-8


# encoding: utf-8

class FormVIPresentBase < Base

  def regular_base
    "ت" + @root1 + "ا" + @root2 + @root3
  end

  def defective_base
    @root3 = "ى"
  end

end