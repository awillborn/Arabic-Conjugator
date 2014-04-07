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

  def doubled_base
    @base[0...-1] + "ّ"
  end

  def infixed_taa_base
    @root1 + "ّ" + @root2 + @root3
  end

  def adjust_first_radical
    @root1 = "أ"
  end

  def adjust_second_radical
    @root2 = "ئ"
  end

  def adjust_third_radical
    @root3 = "ئ"
  end

end