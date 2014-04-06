# encoding: utf-8

require_relative '../base'

class FormVIIPastBase < Base

  def initialize(verb)
    super
    @base = "ان" + @root1 + @root2 + @root3
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

  def doubled_base
    if [:he, :she, :they].include?(@pronoun)
      @base[0...-1] + "ّ"
    else
      @base
    end
  end

end
