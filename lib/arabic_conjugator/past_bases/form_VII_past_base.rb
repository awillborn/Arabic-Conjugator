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
    return @base if [:he, :she, :they].include?(@pronoun)
    "ان" + @root1 + @root3
  end

  def adjust_third_radical
    @root3 = "أ"
  end

end
