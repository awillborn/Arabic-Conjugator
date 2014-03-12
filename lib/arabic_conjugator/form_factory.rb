class FormFactory
  MAPPING = {
    1: FormI,
    2: FormII,
    3: FormIII,
    4: FormIV,
    5: FormV,
    6: FormVI,
    7: FormVII,
    8: FormVIII,
    10: FormX
  }

  def initialize(form, args)
    @form = form
    @args = args
  end

  def create_form
    MAPPING[@form].new(*@args)
  end

end