# encoding: utf-8

require_relative '../form'

class FormX < Form

  def initialize(root1, root2, root3)
    super
    @base = "است" + @root1 + @root2 + @root3
  end

end