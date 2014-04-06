# encoding: utf-8


# encoding: utf-8

class FormVIPresentBase < Base

  def initialize(verb)
    super
    @base =  "ت" + @root1 + "ا" + @root2 + @root3
  end

  def regular_base
    @base
  end

  def defective_base
    if [:you_f, :you_pl, :they].include?(@pronoun)
      @base[0...-1]
    else
      @base[0...-1] + "ى"
    end
  end

  def assimilated_base
    @base
  end

  def hollow_base
    @base
  end

end