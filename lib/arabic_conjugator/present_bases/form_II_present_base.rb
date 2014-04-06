# encoding: utf-8

class FormIIPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + "ّ" + @root3
  end

  def regular_base
    @base
  end

  def hollow_base
    @base
  end

  def defective_base
    @base
  end

  def doubled_base
    @base
  end

  def assimilated_base
    @base
  end

end