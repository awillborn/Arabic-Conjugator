# encoding: utf-8

require_relative '../form'

class FormV < Form

  def initialize(root1, root2, root3)
    super
    @base = "ت" + @root1 + @root2 + "ّ" + @root3
  end

end