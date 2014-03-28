# encoding: utf-8

require_relative '../form'
require_relative '../factories/conjugator_factory'

class FormI < Form

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = @root1 + @root2 + @root3
    @masdar = "ال" + @base
  end

  def conjugator
    p self.class.to_s
    ConjugatorFactory.new(self.class.to_s, @tense)
  end

end
