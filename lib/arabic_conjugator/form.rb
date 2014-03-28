# encoding: utf-8

require_relative 'past_tense'
require_relative 'present_tense'
require_relative 'factories/type_factory'
require_relative 'factories/conjugator_factory'

PAST_PRONOUNS = { :I => "ت", :you_m => "ت", :you_f => "ت", :she => "ت" , :he =>'', :we => "نا", :you_pl => "تم", :they => "وا" }
PRESENT_PRONOUNS = { :I => ["أ", ''], :you_m => ["ت", ''], :you_f => ["ت", "ين"], :he => ["ي", ""], :she => ["ت", ""], :we => ["ن", ''], :you_pl => ["ت", "ون"], :they => ["ي", "ون"] }

class Form
  attr_reader :base, :root1, :root2, :root3, :tense, :pronoun, :type

  def initialize(root1, root2, root3, tense, pronoun)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @tense = tense
    @pronoun = pronoun
    @type = type
  end

  def conjugate
    conjugator = ConjugatorFactory.new(self, @tense).create_conjugator.new(self)
    conjugator.conjugate
  end

  def type
    klass = TypeFactory.new(@root1, @root2, @root3)
    klass.find_type
  end

end
