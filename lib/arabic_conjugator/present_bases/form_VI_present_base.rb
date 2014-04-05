# encoding: utf-8


# encoding: utf-8

class FormVIPresentBase < Base

  def initialize(verb)
    super
    @base =  "ت" + @root1 + "ا" + @root2 + @root3
  end

  def regular_base
    @base
  end

  def defective_base
    @root3 = "ى"
  end

end