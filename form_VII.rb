require_relative 'form_initializer'

class FormVII < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = "ان" + @root1 + @root2 + @root3
    @masdar = "الان" + @root1 + @root2 + "ا" + @root3
  end

  # def defective_past
  #   if pronoun == :he
  #     "ان" + @root1 + @root2 + "ى"
  #   else
  #     "ان" + @root1 + @root2 + "ي" + @past_pronouns[@pronoun]
  #   end
  # end

  # def defective_present
  #   if
  #   else

  #   end
  # end

  # def hollow_past
  #   if [:he, :she, :they].include?(@pronoun)
  #     "ان" + @root1 + "ا" + @root3 + @past_pronouns[@pronoun]
  #   else
  #     "ان" + @root1 + @root3 + @past_pronouns[@pronoun]
  #   end

  # end

  #form VII hollow_present
  #form VII weak_past
  #form VII weak_present


end