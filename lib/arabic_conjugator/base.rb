# encoding: utf-8

PAST_AFFIXES = { :I => "ت", :you_m => "ت", :you_f => "ت", :she => "ت" , :he =>'', :we => "نا", :you_pl => "تم", :they => "وا" }
PRESENT_AFFIXES = { :I => ["أ", ''], :you_m => ["ت", ''], :you_f => ["ت", "ين"], :he => ["ي", ""], :she => ["ت", ""], :we => ["ن", ''], :you_pl => ["ت", "ون"], :they => ["ي", "ون"] }

class Base

  def initialize(verb)
    @types = verb.types[0]
    @root1 = verb.root1
    @root2 = verb.root2
    @root3 = verb.root3
    @pronoun = verb.pronoun
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

  def assimilated_base
    @base
  end

end
