# encoding: utf-8

PAST_AFFIXES = { :I => "ت", :you_m => "ت", :you_f => "ت", :she => "ت" , :he =>'', :we => "نا", :you_pl => "تم", :they => "وا" }
PRESENT_AFFIXES = { :I => ["أ", ''], :you_m => ["ت", ''], :you_f => ["ت", "ين"], :he => ["ي", ""], :she => ["ت", ""], :we => ["ن", ''], :you_pl => ["ت", "ون"], :they => ["ي", "ون"] }

class Form
  attr_reader :base, :root1, :root2, :root3

  def initialize(root1, root2, root3)
    @root1 = root1
    @root2 = root2
    @root3 = root3
  end

end
