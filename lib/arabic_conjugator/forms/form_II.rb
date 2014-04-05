# encoding: utf-8

require_relative '../form'

class FormII < Form

  def initialize(root1, root2, root3)
    super
    @base = @root1 + @root2 + "ّ" + @root3
  end

end
