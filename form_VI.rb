require_relative 'form_initializer'

class FormVI < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = "ت" + @root1 + "ا" + @root2 + @root3
    @masdar = "ال" + @base
  end


  # def defective_past
  #   if @pronoun == :he
  #     "ت" + @root1 + "ا" + @root2 + "ى"
  #   else
  #     "ت" + @root1 + "ا" + @root2 + "ي" + @past_pronouns[@pronoun]
  #   end
  # end

  # def defective_present
  # end

  #form VI hollow past is regular
  #form VI hollow present is regular
  #form VI weak past is regular
  #form VI weak present is regular

end