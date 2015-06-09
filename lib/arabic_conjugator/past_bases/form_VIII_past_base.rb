# encoding: utf-8

require_relative '../base'
require_relative '../form_VIII_hamzated'
require_relative '../form_VIII_hollow'


class FormVIIIPastBase < Base

  def initialize(verb)
    super
    @base =  "ا" + @root1 + "ت" + @root2 + @root3
  end

  def regular_base
    return "اتّ" + @root2 + @root3 if @root1 == "ت"
    @base
  end

  def hollow_base
    @root2 = (FORM_VIII_HOLLOW[@root1+@root2+@root3] ||= "ا")
    @base =  "ا" + @root1 + "ت" + @root2 + @root3
    @base = morphed_taa_base if ["ز", "ذ", "ص", "ض"].include?(@root1)
    return @base[0..2] + @root3 if @root2 == "ا" && ![:he, :she, :they].include?(@pronoun)
    @base
  end

  def doubled_base
    @base = morphed_taa_base if ["ز", "ذ", "ص", "ض"].include?(@root1)
    super
  end

  def assimilated_defective_base
    @base = "اتّ" + @root2
    return @base + "ى" if @pronoun == :he
    return @base if [:she, :they].include?(@pronoun)
    @base + "ي"
  end

  def assimilated_base
    "اتّ" + @root2 + @root3
  end

  def assimilated_taa_base
    "ا" + @root1 + "ّ" + @root2 + @root3
  end

  def morphed_taa_base
    return "ا" + @root1 + "د" + @root2 + @root3 if ["ز", "ذ"].include?(@root1)
    "ا" + @root1 + "ط" + @root2 + @root3
  end

  def adjust_first_radical
    @root1 = (FORM_VIII_HAMZATED[@root1 + @root2 + @root3] ||= "ئ")
  end

  def adjust_second_radical
    @root2 = "أ"
  end

  def adjust_third_radical
    @root3 = "أ"
  end
end
