# encoding: utf-8

require_relative '../base'

class FormVIIIPastBase < Base

  def regular_base
    "ا" + @root1 + "ت" + @root2 + @root3
  end

  def hollow_base
    @root2 = "ا"
    @base = "ا" + @root1 + "ت" + @root2 + @root3
    if [:he, :she, :they].include?(@pronoun)
      @base
    else
      @base = "ا" + @root1 + "ت" + @root3
      @base
    end
  end

  def assimilated_base
    "اتّ" + @root2 + @root3
  end

  def defective_base
    @base = @base[0...-1]
    if @pronoun == :he
      @base + "ى"
    elsif [:she, :they].include?(@pronoun)
      @base
    else
      @base + "ي"
    end
  end

end