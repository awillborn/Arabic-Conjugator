# encoding: utf-8

require_relative '../present_tense'

class FormVIIIPresent < Present

  def regular
    @base = @root1 + "ت" + @root2 + @root3
    super
  end

  def hollow
    @root2 = "ا"
    @base = @root1 + "ت" + @root2 + @root3
    super
  end

  def assimilated
    PRESENT_PRONOUNS[@pronoun][0] + "تّ" + @root2 + @root3 + PRESENT_PRONOUNS[@pronoun][1]
  end

end