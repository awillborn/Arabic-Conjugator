class Base

  def initialize(verb)
    @types = verb.types[0]
    @root1 = verb.root1
    @root2 = verb.root2
    @root3 = verb.root3
    @pronoun = verb.pronoun
    @base = verb.form.base
  end

end
