# encoding: utf-8

require_relative '../form'

class FormIII < Form

  def initialize(root1, root2, root3)
    super
    @base = @root1 + "ا" + @root2 + @root3
  end

end
