#coding: UTF-8

require_relative 'arabic_conjugator/version'
require_relative 'arabic_conjugator/factories/type_factory'
require_relative 'arabic_conjugator/factories/base_factory'
require_relative 'arabic_conjugator/factories/tense_factory'
require_relative 'arabic_conjugator/past_tense'
require_relative 'arabic_conjugator/present_tense'

class Verb
  attr_reader :root1, :root2, :root3, :tense, :types, :form, :base, :opts, :pronoun

  def initialize(opts)
    @opts = opts
    @root1 = opts[:root1]
    @root2 = opts[:root2]
    @root3 = opts[:root3]
    @pronoun = opts[:pronoun]
    @tense = opts[:tense]
    @form = opts[:form]
    @types = find_types
    @base = find_base
  end

  def find_types
    TypeFactory.new(@root1, @root2, @root3).load_types
  end

  def find_base
    BaseFactory.new(self).load_base
  end

  def find_tense
    TenseFactory.new(self).create_tense
  end

  def conjugate
    @tense = find_tense
    @tense.conjugate
  end

end

