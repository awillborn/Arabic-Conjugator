require_relative '../present_tense'

class FormIPresent < Present

  def assimilated
    PRESENT_PRONOUNS[@pronoun][0] + @root2 + @root3 + PRESENT_PRONOUNS[@pronoun][1]
  end

end