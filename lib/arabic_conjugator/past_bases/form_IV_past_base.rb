# encoding: utf-8

require_relative '../base'

class FormIVPastBase < Base

  def initialize(verb)
    super
    @base = "أ" + @root1 + @root2 + @root3
  end

  def regular_base
    @base
  end

  def hollow_base
    if [:he, :she, :they].include?(@pronoun)
      "أ" + @root1 + "ا" + @root3
    else
      "أ" + @root1 + @root3
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