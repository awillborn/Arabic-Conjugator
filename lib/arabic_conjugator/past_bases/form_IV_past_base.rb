# encoding: utf-8

require_relative '../base'

class FormIVPastBase < Base

  def initialize(verb)
    super
    @base = calculate_base
  end

  def hollow_base
    if [:he, :she, :they].include?(@pronoun)
      "أ" + @root1 + "ا" + @root3
    else
      "أ" + @root1 + @root3
    end
  end

  def calculate_base
    if @root1 == "آ"
      @root1 + @root2 + @root3
    else
      "أ" + @root1 + @root2 + @root3
    end
  end

  def adjust_first_radical
    @root1 = "آ"
  end

  def adjust_second_radical
    @root2 = "أ"
  end

  def adjust_third_radical
    if [:he, :she].include?(@pronoun) && ["و", "ي"].include?(@root2)
      @root3 = "ء"
    elsif @pronoun == :they
      @root3 = "ؤ"
    else
      @root3 = "أ"
    end
  end

end