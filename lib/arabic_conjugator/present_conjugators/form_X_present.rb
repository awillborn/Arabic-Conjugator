# encoding: utf-8

require_relative '../present_tense'

class FormXPresent < Present

  def regular
    @base = "ست" + @root1 + @root2 + @root3
    super
  end

end