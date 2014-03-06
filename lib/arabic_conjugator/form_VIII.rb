require_relative 'form_initializer'

class FormVIII < FormInitializer

  def initialize(root1, root2, root3, tense, pronoun = nil)
    super
    @base = "ا" + @root1 + "ت" + @root2 + @root3
    @masdar = "الا" + @root1 + "ت" + @root2 + "ا" + @root3
  end

  def present
    @base = @root1 + "ت" + @root2 + @root3
    super
  end

  def hollow_past
    @root2 = "ا"
    @base = "ا" + @root1 + "ت" + @root2 + @root3
    if [:he, :she, :they].include?(@pronoun)
      @base + PAST_PRONOUNS[@pronoun]
    else
      @base = "ا" + @root1 + "ت" + @root3
      @base + PAST_PRONOUNS[@pronoun]
    end
  end

  def hollow_present
    @root2 = "ا"
    @base = @root1 + "ت" + @root2 + @root3
    super
  end

  # def weak_past
  # end

  # def weak_present
  # end

end

formVIII = FormVIII.new("خ", "ي", "ر", "present", :we)
p formVIII.conjugate