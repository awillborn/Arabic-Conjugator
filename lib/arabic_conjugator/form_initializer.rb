# encoding: utf-8

require_relative 'past_tense'
require_relative 'present_tense'

PAST_PRONOUNS = { :I => "ت", :you_m => "ت", :you_f => "ت", :she => "ت" , :he =>'', :we => "نا", :you_pl => "تم", :they => "وا" }
PRESENT_PRONOUNS = { :I => ["أ", ''], :you_m => ["ت", ''], :you_f => ["ت", "ين"], :he => ["ي", ""], :she => ["ت", ""], :we => ["ن", ''], :you_pl => ["ت", "ون"], :they => ["ي", "ون"] }

class FormInitializer
  include PastTense
  include PresentTense

  def initialize(root1, root2, root3, tense, pronoun)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @tense = tense
    @pronoun = pronoun
    @type = find_type
  end

  def conjugate
    method = @type.concat("_").concat(@tense)
    self.send(method)
  end

  def find_type
    if @root2 == "و" || @root2 == "ي"
      "hollow"
    elsif @root3 == "و" || @root3 == "ي"
      "defective"
    elsif @root2 == @root3
      "doubled"
    elsif @root1 == "و" || @root1 == "ي"
      "assimilated"
    else
      "regular"
    end
  end
end
