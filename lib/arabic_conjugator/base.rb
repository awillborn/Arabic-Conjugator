# encoding: utf-8

class Base

  def initialize(verb)
    @types = verb.types[0]
    @root1 = verb.root1
    @root2 = verb.root2
    @root3 = verb.root3
    @pronoun = verb.pronoun
    @base = verb.form.base
  end

  def defective_base
    @base = @base[0...-1]
    if @pronoun == :he
      @base + "ى"
    elsif [:she, :they].include?(@pronoun)
      @base
    else
      @base + "ي"
    end
  end

end
