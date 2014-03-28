# encoding: utf-8

require_relative '../present_tense'

class FormVIIPresent < Present

  def regular
    @base = "ن" + @root1 + @root2 + @root3
    super
  end

  def hollow
    @root2 = "ا"
    @base = "ن" + @root1 + @root2 + @root3
    super
  end

end