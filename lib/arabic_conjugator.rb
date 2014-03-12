#Actual Exceptions:
# A small number of hollow verbs that conjugate with alif as the middle letter in the present tense (e.g. 'to be scared')
# Small number of defective verbs that conjugate with alif maksura as last letter in the present tense (e.g. 'to forget')
# Apparently there are some assimilated verbs that include the waaw in present tense conjugations?

# Changes to add:
# figure out what to do about doubled verbs that are also hollow/defective/whatever
# Add doubled verbs (wazan III doubled is v. rare but should include this anyway I guess)
# deal with verbs with hamza as first root in present tense personal and past tense form IV (are there other cases where this matters?)

#coding: UTF-8

require "arabic_conjugator/version"
require 'arabic_conjugator/form_I'
require 'arabic_conjugator/form_II'
require 'arabic_conjugator/form_III'
require 'arabic_conjugator/form_IV'
require 'arabic_conjugator/form_V'
require 'arabic_conjugator/form_VI'
require 'arabic_conjugator/form_VII'
require 'arabic_conjugator/form_VIII'
require 'arabic_conjugator/form_X'
require 'arabic_conjugator/form_initializer'

module ArabicConjugator

  def initialize(root1, root2, root3, form, tense, pronoun)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @form = form
    @tense = tense
    @pronoun = pronoun
  end

  def conjugate
    form = FormFactory.new(@form, [@root1, @root2, @root3, @form, @tense, @pronoun]).create_form
    form.conjugate
  end

end

