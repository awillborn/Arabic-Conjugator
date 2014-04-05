# encoding: utf-8

require_relative '../base'

class FormXPastBase < Base

  def initialize(verb)
    super
    @base = "است" + @root1 + @root2 + @root3
  end

  def regular_base
    "است" + @root1 + @root2 + @root3
  end

  def hollow_base
    @root2 = "ا"
    @base = "است" + @root1 + @root2 + @root3
    if [:he, :she, :they].include?(@pronoun)
      @base
    else
      "است" + @root1 + @root3
    end
  end

end