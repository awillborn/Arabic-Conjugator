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

  def initialize
    #letters added to end of past tense verbs
    @past_pronouns = { :I => "ت", :you => "ت", :she => "ت" , :he =>'', :we => "نا", :you_pl => "تم", :they => "وا" }
    #letters added to beginning and end of present tense verbs
    @present_pronouns = { :I => ["أ", ''], :you_m => ["ت", ''], :you_f => ["ت", "ين"], :he => ["ي", ""], :she => ["ت", ""], :we => ["ن", ''], :you_pl => ["ت", "ون"], :they => ["ي", "ون"] }
  end

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

  def conjugate(root1, root2, root3, form, tense, pronoun)
    case form
  	when 1
          form_I(root1, root2, root3, tense, pronoun)
    when 2
          form_II(root1, root2, root3, tense, pronoun)
  	when 3
          form_III(root1, root2, root3, tense, pronoun)
  	when 4
          form_IV(root1, root2, root3, tense, pronoun)
  	when 5
          form_V(root1, root2, root3, tense, pronoun)
  	when 6
          form_VI(root1, root2, root3, tense, pronoun)
  	when 7
          form_VII(root1, root2, root3, tense, pronoun)
  	when 8
          form_VIII(root1, root2, root3, tense, pronoun)
  	when 10
          form_X(root1, root2, root3, tense, pronoun)
  	end
  end

  def form_I(root1, root2, root3, tense, pronoun)
    if tense == "past"
      form_I_past(root1, root2, root3, pronoun)
    elsif tense == "present"
      form_I_present(root1, root2, root3, pronoun)
    else #tense == masdar
      "ال" + root1 + root2 + root3
    end
  end

  def form_I_past(root1, root2, root3, pronoun)
    if root2 == "و" || root2 == "ي"
      form_I_hollow_past(root1, root2, root3, pronoun)
    elsif root3 == "و" || root3 == "ي"
      form_I_II_defective_past(root1, root2, root3, pronoun)
    elsif root2 == root3
      form_I_doubled_past(root1, root2, root3, pronoun)
    else
      root1 + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_I_present(root1, root2, root3, pronoun)
    if root1 == "و" || root1 == "ي"
      form_I_weak_present(root1, root2, root3, pronoun)
    elsif root2 == root3
      form_I_doubled_present(root1, root2, root3, pronoun)
    else
      @present_pronouns[pronoun][0] + root1 + root2 + root3 + @present_pronouns[pronoun][1]
    end
  end

  def form_II(root1, root2, root3, tense, pronoun)
    if tense == "past"
      form_II_past(root1, root2, root3, pronoun)
    elsif tense == "present"
      @present_pronouns[pronoun][0] + root1 + root2 + root3 + @present_pronouns[pronoun][1]
    else
      "الت" + root1 + root2 + "ي" + root3
    end
  end

  def form_II_past(root1, root2, root3, pronoun)
    if (root3 == "و" || root3 == "ي")
      form_I_II_defective_past(root1, root2, root3, pronoun)
    else
      root1 + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_I_II_defective_past(root1, root2, root3, pronoun)
    if root3 == "و" && pronoun == :he
        root1 + root2 + "ا"
    elsif root3 == "ي" && pronoun == :he
        root1 + root2 + "ى"
    elsif pronoun == :they || pronoun == :she
        root1 + root2 + @past_pronouns[pronoun]
    else
      root1 + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_I_II_defective_present(root1, root2, root3, pronoun)
    if [:you_f, :you_pl, :they].include?(pronoun)
      @present_pronouns[pronoun][0] + root1 + root2 + @present_pronouns[pronoun][1]
    else
      @present_pronouns[pronoun][0] + root1 + root2 + root3 + @present_pronouns[pronoun][1]
    end
  end

  def form_I_hollow_past(root1, root2, root3, pronoun)
    if [:he, :she, :they].include?(pronoun)
      root1 + "ا" + root3 + @past_pronouns[pronoun]
    else
      root1 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_I_weak_present(root1, root2, root3, pronoun)
    @present_pronouns[pronoun][0] + root2 + root3 + @present_pronouns[pronoun][1]
  end

  def form_I_doubled_present(root1, root2, root3, pronoun)
    @present_pronouns[pronoun][0] + root1 + root2 + "ّ" + @present_pronouns[pronoun][1]
  end

  def form_I_doubled_past(root1, root2, root3, pronoun)
    root1 + root2 + "ّ" + @past_pronouns[pronoun]
  end

  #form II defective present is regular
  #form I hollow present is regular
  #form II hollow past is regular
  #form II hollow present is regular
  #form I weak past is regular

  def form_III(root1, root2, root3, tense, pronoun)
    if tense == "past"
      form_III_past(root1, root2, root3, pronoun)
    elsif tense == "present"
      @present_pronouns[pronoun][0] + root1 + "ا" + root2 + root3 + @present_pronouns[pronoun][1]
    else
      "الم" + root1 + "ا" + root2 + root3 + "ة"
    end
  end

  def form_III_past(root1, root2, root3, pronoun)
    if root3 == "و" || root3 == "ي"
      form_III_defective_past(root1, root2, root3, pronoun)
    else
      root1 + "ا" + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_III_defective_past(root1, root2, root3, pronoun)
    if root3 == "و" && pronoun == :he
      root1 + "ا" + root2 + "ا"
    elsif root3 == "ي" && pronoun == :he
      root1 + "ا" + root2 + "ى"
    elsif pronoun == :they || pronoun == :she
      root1 + "ا" + root2 + @past_pronouns[pronoun]
    else
      root1 + "ا" + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  #form III defective present is regular
  #form III hollow past is regular
  #form III hollow present is regular

  def form_IV(root1, root2, root3, tense, pronoun)
    if tense == "past"
      form_IV_past(root1, root2, root3, pronoun)
    elsif tense == "present"
      @present_pronouns[pronoun][0] + root1 + root2 + root3 + @present_pronouns[pronoun][1]
    else #tense == masdar
      "الإ" + root1 + root2 + "ا" + root3
    end
  end

  def form_IV_past(root1, root2, root3, pronoun)
    if root3 == "و" || root3 == "ي"
      form_IV_defective_past(root1, root2, root3, pronoun)
    else
      "أ" + root1 + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_IV_defective_past(root1, root2, root3, pronoun)
    if root3 == "و" && pronoun == :he
      "أ" + root1 + root2 + "ا"
    elsif root3 == "ي" && pronoun == :he
      "أ" + root1 + root2 + "ى"
    elsif pronoun == :they || pronoun == :she
      "أ" + root1 + root2 + @past_pronouns[pronoun]
    else
      "أ" + root1 + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_IV_defective_present
    ##not regular for anti, hom, antum
  end

  #form IV hollow past is regular
  #form IV hollow present is regular

  def form_V(root1, root2, root3, tense, pronoun)
    if tense == "past"
      form_V_past(root1, root2, root3, pronoun)
    elsif  tense == "present"
      @present_pronouns[pronoun][0] + "ت" + root1 + root2 + root3 + @present_pronouns[pronoun][1]
    else
      "الت" + root1 + root2 + root3
    end
  end

  def form_V_past(root1, root2, root3, pronoun)
    if root3 == "ي" || root3 == "و"
      form_V_defective_past(root1, root2, root3, pronoun)
    else
      "ت" + root1 + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_V_defective_past(root1, root2, root3, pronoun)
    if pronoun == :he
      "ت" + root1 + root2 + "ى"
    else
      "ت" + root1 + root2 + "ي" + @past_pronouns[pronoun]
    end
  end

  def form_V_defective_present
  end

  #form V hollow past is regular
  #form V hollow present is regular
  #form V weak past is regular
  #form V weak present is regular


  def form_VI(root1, root2, root3, tense, pronoun)
    if tense == "past"
      form_VI_past(root1, root2, root3, pronoun)
    elsif tense == "present"
      @present_pronouns[pronoun][0] + "ت" + root1 + "ا" + root2 + root3 + @present_pronouns[pronoun][1]
    else
      "الت" + root1 + "ا" + root2 + root3
    end
  end

  def form_VI_past(root1, root2, root3, pronoun)
    if root3 == "ي" || root3 == "و"
      form_VI_defective_past(root1, root2, root3, pronoun)
    else
      "ت" + root1 + "ا" + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_VI_defective_past(root1, root2, root3, pronoun)
    if pronoun == :he
      "ت" + root1 + "ا" + root2 + "ى"
    else
      "ت" + root1 + "ا" + root2 + "ي" + @past_pronouns[pronoun]
    end
  end

  def form_VI_defective_present
  end

  #form VI hollow past is regular
  #form VI hollow present is regular
  #form VI weak past is regular
  #form VI weak present is regular

  def form_VII(root1, root2, root3, tense, pronoun)
    if tense == "past"
      form_VII_past(root1, root2, root3, pronoun)
    elsif tense == "present"
      @present_pronouns[pronoun][0] + "ن" + root1 + root2 + root3 + @present_pronouns[pronoun][1]
    else
      "الان" + root1 + root2 + "ا" + root3
    end
  end

  def form_VII_past(root1, root2, root3, pronoun)
    if root2 == "و" || root2 == "ي"
      form_VII_hollow_past(root1, root2, root3, pronoun)
    elsif root3 == "ي" || root3 == "و"
      form_VII_defective_past(root1, root2, root3, pronoun)
    else
      "ان" + root1 + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_VII_defective_past(root1, root2, root3, pronoun)
    if pronoun == :he
      "ان" + root1 + root2 + "ى"
    else
      "ان" + root1 + root2 + "ي" + @past_pronouns[pronoun]
    end
  end

  def form_VII_defective_present(root1, root2, root3, pronoun)
    if
    else

    end
  end

  def form_VII_hollow_past
    if [:he, :she, :they].include?(pronoun)
      "ان" + root1 + "ا" + root3 + @past_pronouns[pronoun]
    else
      "ان" + root1 + root3 + @past_pronouns[pronoun]
    end

  end

  #form VII hollow_present
  #form VII weak_past
  #form VII weak_present

  def form_VIII(root1, root2, root3, tense, pronoun)
    if tense == "past"
      form_VIII_past(root1, root2, root3, pronoun)
    elsif tense == "present"
      form_VIII_present(root1, root2, root3, pronoun)
    else
      "الا" + root1 + "ت" + root2 + "ا" + root3
    end
  end

  def form_VIII_past(root1, root2, root3, pronoun)
    if root2 == "و" || root2 == "ي"
      form_VIII_hollow_past(root1, root2, root3, pronoun)
    elsif (root3 == "ي" || root3 == "و")
      form_VII_defective_past(root1, root2, root3, pronoun)
    else
      "ا" + root1 + "ت" + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_VIII_present(root1, root2, root3, pronoun)
    if root1 == "و" || root1 == "ي"
      @present_pronouns[pronoun][0] + "ت" + root2 + root3 + @present_pronouns[pronoun][1]
    else
      @present_pronouns[pronoun][0] + root1 + "ت" + root2 + root3 + @present_pronouns[pronoun][1]
    end
  end

  def form_VIII_defective_past(root1, root2, root3, pronoun)
    if pronoun == :he
      "ا" + root1 + "ت" + root2 + "ى"
    else
      "ا" + root1 + "ت" + root2 + "ي" + @past_pronouns[pronoun]
    end
  end

  def form_VIII_defective_present(root1, root2, root3, pronoun)
    if
    else

    end
  end


  def form_VIII_hollow_past
    if [:he, :she, :they].include?(pronoun)
      "ا" + root1 + "تا" + root3 + @past_pronouns[pronoun]
    else
      "ا" + root1 + "ت" + root3 + @past_pronouns[pronoun]
    end
  end

  #form VIII hollow present

  def form_VIII_weak_past
  end

  def form_VIII_weak_present
  end

  def form_X(root1, root2, root3, tense, pronoun)
    if tense == "past"
      form_X_past(root1, root2, root3, pronoun)
    elsif tense == "present"
      @present_pronouns[pronoun][0] + "ست" + root1 + root2 + root3 + @present_pronouns[pronoun][1]
    else
      "الاست" + root1 + root2 + root3 if tense == "masdar"
    end
  end

  def form_X_past(root1, root2, root3, pronoun)
    if root3 == "و" || root3 == "ي"
      form_x_defective_past(root1, root2, root3, pronoun)
    elsif root2 == "و"  || root2 == "ي"
      form_X_hollow_past(root1, root2, root3, pronoun)
    else
      "است" + root1 + root2 + root3 + @past_pronouns[pronoun]
    end
  end

  def form_X_defective_past(root1, root2, root3, pronoun)
    if pronoun == :he
      "است" + root1 + root2 + "ى"
    else
      "است" + root1 + root2 + "ي" + @past_pronouns[pronoun]
    end
  end

  def form_X_defective_present
  end

  def form_X_hollow_past
    if [:he, :she, :they].include?(pronoun)
      "است" + root1 + "ا" + root3 + @past_pronouns[pronoun]
    else
      "است" + root1 + root3 + @past_pronouns[pronoun]
    end
  end

  #form_X_hollow_present

end