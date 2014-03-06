#encoding: utf-8
#
#Actual Exceptions:
# A small number of hollow verbs that conjugate with alif as the middle letter in the present tense (e.g. 'to be scared')
# Small number of defective verbs that conjugate with alif maksura as last letter in the present tense (e.g. 'to forget')
# Apparently there are some assimilated verbs that include the waaw in present tense conjugations?

# Changes to add:
# figure out what to do about doubled verbs that are also hollow/defective/whatever
# Add shaddas!!!
# Add doubled verbs (wazan III doubled is v. rare but should include this anyway I guess)
# deal with verbs with hamza as first root in present tense personal and past tense form IV (are there other cases where this matters?)

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
    case @form
    when 1
        FormI.new(@root1, @root2, @root3, @tense, @pronoun)
    when 2
        FormII.new(@root1, @root2, @root3, @tense, @pronoun)
    when 3
        FormIII.new(@root1, @root2, @root3, @tense, @pronoun)
    when 4
        FormIV.new(@root1, @root2, @root3, @tense, @pronoun)
    when 5
        FormV.new(@root1, @root2, @root3, @tense, @pronoun)
    when 6
        FormVI.new(@root1, @root2, @root3, @tense, @pronoun)
    when 7
        FormVII.new(@root1, @root2, @root3, @tense, @pronoun)
    when 8
        FormVIII.new(@root1, @root2, @root3, @tense, @pronoun)
    when 10
        FormX.new(@root1, @root2, @root3, @tense, @pronoun)
    end
  end

end

