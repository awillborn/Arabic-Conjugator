# encoding: utf-8

class FormIIIPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + "ا" + @root2 + @root3
  end

  def regular_base
    @root1 + "ا" + @root2 + @root3
  end

end