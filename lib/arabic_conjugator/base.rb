# encoding: utf-8

PAST_AFFIXES = { :I => "ت", :you_m => "ت", :you_f => "ت", :she => "ت" , :he =>'', :we => "نا", :you_pl => "تم", :they => "وا" }
PRESENT_AFFIXES = { :I => ["أ", ''], :you_m => ["ت", ''], :you_f => ["ت", "ين"], :he => ["ي", ""], :she => ["ت", ""], :we => ["ن", ''], :you_pl => ["ت", "ون"], :they => ["ي", "ون"] }

class Base

  def initialize(verb)
    @root1 = verb.root1
    @root2 = verb.root2
    @root3 = verb.root3
    @pronoun = verb.pronoun
    adjust_first_radical  if @root1 == "ء"
    adjust_second_radical if @root2 == "ء"
    adjust_third_radical  if @root3 == "ء"
  end

  def regular_base
    return @base[0...-1] + "ؤ" if @root3 == "أ" && @pronoun == :they
    @base
  end

  def defective_base
    @base = @base[0...-1]
    return @base + "ى" if @pronoun == :he
    return @base if [:she, :they].include?(@pronoun)
    @base + "ي"
  end

  def assimilated_base
    @base
  end

  def hollow_base
    return @base[0...-1] + "ؤ" if @root3 == "أ" && @pronoun == :they
    @base
  end

  def doubled_base
    return @base[0...-1] + "ّ" if [:he, :she, :they].include?(@pronoun)
    @base
  end

  def assimilated_defective_base
    defective_base
  end

  def hollow_defective_base
    defective_base
  end

  def adjust_first_radical
    @root1 = "أ"
  end
end
