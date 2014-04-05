# encoding: utf-8

require_relative '../base'

class FormVIIPastBase < Base

  def regular_base
    "ان" + @root1 + @root2 + @root3
  end

  def hollow_base
    @root2 = "ا"
    @base = "ان" + @root1 + @root2 + @root3
    if [:he, :she, :they].include?(@pronoun)
      @base
    else
      "ان" + @root1 + @root3
    end
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
