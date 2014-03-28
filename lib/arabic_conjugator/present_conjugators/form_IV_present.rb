require_relative '../present_tense'

class FormIVPresent < Present
  def regular
    @base = @root1 + @root2 + @root3
    super
  end
end