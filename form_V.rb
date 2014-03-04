require_relative 'form_initializer'

class FormV < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = "ت" + @root1 + @root2 + @root3
    @masdar = "ال" + @base
  end

  # def defective_past
  #   if @pronoun == :he
  #     "ت" + @root1 + @root2 + "ى"
  #   else
  #     "ت" + @root1 + @root2 + "ي" + @past_pronouns[@pronoun]
  #   end
  # end

  # def defective_present
  # end

  #form V hollow past is regular
  #form V hollow present is regular
  #form V weak past is regular
  #form V weak present is regular


end
