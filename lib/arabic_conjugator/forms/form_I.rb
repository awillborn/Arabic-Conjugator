require_relative '../form'

class FormI < Form

  def initialize(root1, root2, root3)
    super
    @base = @root1 + @root2 + @root3
  end

end
