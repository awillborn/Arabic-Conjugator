# encoding: utf-8

class FormIPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + @root3
  end

  def regular_base
    @root1 + @root2 + @root3
  end

  def assimilated_base
    @root2 + @root3
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

  def hollow_base
    @base
  end

end