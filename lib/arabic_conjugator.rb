#coding: UTF-8
require_relative 'arabic_conjugator/version'
require_relative 'arabic_conjugator/factories/type_factory'
require_relative 'arabic_conjugator/factories/base_factory'

class Verb
  attr_reader :root1, :root2, :root3, :tense, :types, :form, :base, :pronoun

  def initialize(opts)
    opts.each{ |name, value| instance_variable_set("@#{name}", value) }
    @types = find_types
    @base = find_base
  end

  def find_types
    TypeFactory.new(@root1, @root2, @root3, @form).load_types
  end

  def find_base
    BaseFactory.new(self).load_base
  end

  def conjugate
    return @base + PAST_AFFIXES[@pronoun] if @tense == 'past'
    PRESENT_AFFIXES[@pronoun][0] + @base + PRESENT_AFFIXES[@pronoun][1]
  end
end

