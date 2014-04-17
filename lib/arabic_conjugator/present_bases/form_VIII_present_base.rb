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

  def assimilated_defective_base
    @base = "تّ" + @root2 + @root3
    if [:you_f, :you_pl, :they].include?(@pronoun)
      @base[0...-1]
    else
      @base[0...-1] + "ي"
    end
  end

  def defective_base
    if [:you_f, :you_pl, :they].include?(@pronoun)
      @base[0...-1]
    else
      @base[0...-1] + "ي"
    end
  end

  def assimilated_base
    "تّ" + @root2 + @root3
  end

  def doubled_base
    @base[0...-1] + "ّ"
  end

  def assimilated_taa_base
    @root1 + "ّ" + @root2 + @root3
  end

  def morphed_taa_base
    if ["ز", "ذ"].include?(@root1)
      @root1 + "د" + @root2 + @root3
    else
      @root1 + "ط" + @root2 + @root3
    end
  end

  def adjust_second_radical
    @root2 = "ئ"
  end

  def adjust_third_radical
    @root3 = "ئ"
  end

end