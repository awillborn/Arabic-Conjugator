# encoding: utf-8

class FormIIIPresentBase < Base

  def initialize(verb)
    super
    @base = @root1 + "ا" + @root2 + @root3
  end

  def regular_base
    @root1 + "ا" + @root2 + @root3
  end

  def defective_base
    if [:you_pl, :they, :you_f].include?(@pronoun)
      @base[0...-1]
    else
      @base
    end
  end

  def hollow_base
    @base
  end

end