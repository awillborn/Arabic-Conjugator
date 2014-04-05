# encoding: utf-8

require_relative '../form'

class FormIV < Form

  def initialize(root1, root2, root3)
    super
    @base = "أ" + @root1 + @root2 + @root3
  end

end