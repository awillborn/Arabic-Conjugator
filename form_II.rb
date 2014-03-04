require_relative 'form_initializer'

class FormII
include FormInitializer

  def conjugate
    if @tense == "past"
      past
    elsif @tense == "present"
      @present_pronouns[@pronoun][0] + @root1 + @root2 + "ّ" + @root3 + @present_pronouns[@pronoun][1]
    else
      "الت" + @root1 + @root2 + "ي" + @root3
    end
  end

  def past
    if (@root3 == "و" || @root3 == "ي")
      defective_past
    else
      @root1 + @root2 + "ّ" + @root3 + @past_pronouns[@pronoun]
    end
  end

  #form II defective present is regular -- is it though?
  #form II hollow past is regular
  #form II hollow present is regular

end

formII = FormII.new("ك", "ت", "ب", "past", :they)
p formII.conjugate