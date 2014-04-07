# encoding: utf-8

class FormIIPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + "ّ" + @root3
  end

  def defective_base
    @base
  end

  def doubled_base
    @base
  end

  def adjust_first_radical
    @root1 = "ؤ"
  end

end