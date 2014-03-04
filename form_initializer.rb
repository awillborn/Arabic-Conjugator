module FormInitializer
  def initialize(root1, root2, root3, tense, pronoun)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @tense = tense
    @pronoun = pronoun
    @past_pronouns = { :I => "ت", :you => "ت", :she => "ت" , :he =>'', :we => "نا", :you_pl => "تم", :they => "وا" }
    @present_pronouns = { :I => ["أ", ''], :you_m => ["ت", ''], :you_f => ["ت", "ين"], :he => ["ي", ""], :she => ["ت", ""], :we => ["ن", ''], :you_pl => ["ت", "ون"], :they => ["ي", "ون"] }
  end

  def three_roots
    @root1 + @root2 + @root3
  end

end