# encoding: utf-8

#Actual Exceptions:
# A small number of hollow verbs that conjugate with alif as the middle letter in the present tense (e.g. 'to be scared')
# Small number of defective verbs that conjugate with alif maksura as last letter in the present tense (e.g. 'to forget')
# Apparently there are some assimilated verbs that include the waaw in present tense conjugations?

# Changes to add:
# figure out what to do about doubled verbs that are also hollow/defective/whatever
# Add doubled verbs (wazan III doubled is v. rare but should include this anyway I guess)
# deal with verbs with hamza as first root in present tense personal and past tense form IV (are there other cases where this matters?)

#coding: UTF-8

require_relative 'arabic_conjugator/version'
require_relative 'arabic_conjugator/form_I'
require_relative 'arabic_conjugator/form_II'
require_relative 'arabic_conjugator/form_III'
require_relative 'arabic_conjugator/form_IV'
require_relative 'arabic_conjugator/form_V'
require_relative 'arabic_conjugator/form_VI'
require_relative 'arabic_conjugator/form_VII'
require_relative 'arabic_conjugator/form_VIII'
require_relative 'arabic_conjugator/form_X'
require_relative 'arabic_conjugator/form'
require_relative 'arabic_conjugator/form_factory'
require_relative 'arabic_conjugator/type_factory'

class Conjugator
  attr_reader :root1, :root2, :root3

  def initialize(root1, root2, root3, form, tense, pronoun)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @form = form
    @tense = tense
    @pronoun = pronoun
  end

  def type
    klass = TypeFactory.new(@root1, @root2, @root3)
    klass.find_type
  end

  def conjugate
    form = FormFactory.new(@form, [@root1, @root2, @root3,@tense, @pronoun, type]).create_form
    form.conjugate
  end

end

conjugator = Conjugator.new("ك", "ت", "ب", "1", "past", :she)
p conjugator.conjugate
p conjugator.type
p conjugator.root1
p conjugator.root2
p conjugator.root3
p conjugator.root2 == conjugator.root3

