#Actual Exceptions:
# A small number of hollow verbs that conjugate with alif as the middle letter in the present tense (e.g. 'to be scared')
# Small number of defective verbs that conjugate with alif maksura as last letter in the present tense (e.g. 'to forget')
# Apparently there are some assimilated verbs that include the waaw in present tense conjugations?

# Changes to add:
# figure out what to do about doubled verbs that are also hollow/defective/whatever
# Add shaddas!!!
# Add doubled verbs (wazan III doubled is v. rare but should include this anyway I guess)
# deal with verbs with hamza as first root in present tense personal and past tense form IV (are there other cases where this matters?)

class Conjugator

  def generate_parameters
    arabic_letters = ["ب", "ث", "ج", "ح", "ق", "ل", "ك", "س", "ش", "خ", "ف", "و", "ي"]
    forms = [1,2,3,4,5,6,7,8,10]
    tenses = ["past", "present", "masdar"]
    pronouns = [:I, :you_m, :you_f, :he, :she, :we, :you_pl, :they]
    @root1 = arabic_letters.sample
    arabic_letters.delete(root1)
    @root2 = arabic_letters.sample
    arabic_letters.delete(root2)
    @root3 = arabic_letters.sample
    @form = forms.sample
    @tense = tenses.sample
    @pronoun = pronouns.sample
  end

end

my_conjugator = Conjugator.new
my_conjugator.generate_parameters

