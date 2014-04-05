# encoding: utf-8

require_relative '../form'

class FormVII < Form

  def initialize(root1, root2, root3)
    super
    @base = "ان" + @root1 + @root2 + @root3
  end

end