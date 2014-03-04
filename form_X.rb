require_relative 'form_initializer'

class FormX < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = "است" + @root1 + @root2 + @root3
    @masdar = "الاست" + @root1 + @root2 + "ا" + @root3
  end

  # def defective_past
  #   if pronoun == :he
  #     "است" + @root1 + @root2 + "ى"
  #   else
  #     "است" + @root1 + @root2 + "ي" + @past_pronouns[pronoun]
  #   end
  # end

  # def hollow_past
  #   if [:he, :she, :they].include?(pronoun)
  #     "است" + @root1 + "ا" + @root3 + @past_pronouns[pronoun]
  #   else
  #     "است" + @root1 + @root3 + @past_pronouns[pronoun]
  #   end
  # end

  # def form_X_defective_present
  # end

  # #form_X_hollow_present
end