# encoding: utf-8

require_relative '../base'

class FormVIIIPastBase < Base

  def initialize(verb)
    super
    @base =  "ا" + @root1 + "ت" + @root2 + @root3
  end

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

  def doubled_base
    if [:he, :she, :they].include?(@pronoun)
      @base[0...-1] + "ّ"
    else
      @base
    end
  end

end