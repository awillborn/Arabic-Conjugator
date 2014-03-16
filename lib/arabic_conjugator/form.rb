# encoding: utf-8

require_relative 'past_tense'
require_relative 'present_tense'

PAST_PRONOUNS = { :I => "ت", :you_m => "ت", :you_f => "ت", :she => "ت" , :he =>'', :we => "نا", :you_pl => "تم", :they => "وا" }
PRESENT_PRONOUNS = { :I => ["أ", ''], :you_m => ["ت", ''], :you_f => ["ت", "ين"], :he => ["ي", ""], :she => ["ت", ""], :we => ["ن", ''], :you_pl => ["ت", "ون"], :they => ["ي", "ون"] }

class Form
  include PastTense
  include PresentTense

  def initialize(root1, root2, root3, tense, pronoun, type)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @type = type
    @tense = tense
    @pronoun = pronoun
  end

  def conjugate
    method = @type.concat("_").concat(@tense)
    self.send(method)
  end

end
