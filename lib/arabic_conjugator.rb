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

class Verb
  attr_reader :root1, :root2, :root3

  def initialize(root1, root2, root3, form, tense, pronoun)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @form = form
    @tense = tense
    @pronoun = pronoun
  end

  def conjugate
    form = FormFactory.new(@form, [@root1, @root2, @root3, @tense, @pronoun]).create_form
    form.conjugate
  end

end


