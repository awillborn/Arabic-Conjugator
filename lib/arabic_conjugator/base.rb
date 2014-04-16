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
    adjust_first_radical if @root1 == "ء"
    adjust_second_radical if @root2 == "ء"
    adjust_third_radical if @root3 == "ء"
  end

  def regular_base
    @base
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

  def hollow_base
    @base
  end

  def doubled_base
    if [:he, :she, :they].include?(@pronoun)
      @base[0...-1] + "ّ"
    else
      @base
    end
  end

  def first_third_weak_base
    defective_base
  end

end
