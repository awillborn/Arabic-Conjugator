#Actual Exceptions:
# A small number of hollow verbs that conjugate with alif as the middle letter in the present tense (e.g. 'to be scared')
# Small number of defective verbs that conjugate with alif maksura as last letter in the present tense (e.g. 'to forget')
# Apparently there are some assimilated verbs that include the waaw in present tense conjugations?

# Changes to add:
# deal with verbs with hamza as first root in present tense personal and past tense form IV (are there other cases where this matters?)

#coding: UTF-8

require_relative 'arabic_conjugator/version'
require_relative 'arabic_conjugator/forms/form_I'
require_relative 'arabic_conjugator/forms/form_II'
require_relative 'arabic_conjugator/forms/form_III'
require_relative 'arabic_conjugator/forms/form_IV'
require_relative 'arabic_conjugator/forms/form_V'
require_relative 'arabic_conjugator/forms/form_VI'
require_relative 'arabic_conjugator/forms/form_VII'
require_relative 'arabic_conjugator/forms/form_VIII'
require_relative 'arabic_conjugator/forms/form_X'
require_relative 'arabic_conjugator/form'
require_relative 'arabic_conjugator/factories/form_factory'
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
    @form = find_form(opts[:form], [@root1, @root2, @root3])
    @types = find_types
    @base = find_base
  end

  def find_form(form, roots)
    FormFactory.new(form, roots).create_form
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

