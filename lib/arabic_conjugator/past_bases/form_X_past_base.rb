# encoding: utf-8

require_relative '../base'

class FormXPastBase < Base

  def initialize(verb)
    super
    @base = "است" + @root1 + @root2 + @root3
  end

  def regular_base
    @base
  end

  def hollow_base
    @root2 = "ا"
    if [:he, :she, :they].include?(@pronoun)
      @base
    else
      "است" + @root1 + @root3
    end
  end

  def doubled_base
    if [:he, :she, :they].include?(@pronoun)
      @base[0...-1] + "ّ"
    else
      @base
    end
  end

  def assimilated_base
    @base
  end

end