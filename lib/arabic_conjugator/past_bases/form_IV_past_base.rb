# encoding: utf-8

require_relative '../base'

class FormIVPastBase < Base

  def initialize(verb)
    super
    @base = calculate_base
  end

  def hollow_base
    return "أ" + @root1 + "ا" + @root3 if [:he, :she, :they].include?(@pronoun)
    "أ" + @root1 + @root3
  end

  def calculate_base
    return @root1 + @root2 + @root3 if @root1 == "آ"
    "أ" + @root1 + @root2 + @root3
  end

  def adjust_first_radical
    @root1 = "آ"
  end

  def adjust_second_radical
    @root2 = "أ"
  end

  def adjust_third_radical
    return @root3 = "ء" if [:he, :she].include?(@pronoun) && ["و", "ي"].include?(@root2)
    return @root3 = "ؤ" if @pronoun == :they
    @root3 = "أ"
  end

end