require_relative '../forms/form_I'
require_relative '../forms/form_II'
require_relative '../forms/form_III'
require_relative '../forms/form_IV'
require_relative '../forms/form_V'
require_relative '../forms/form_VI'
require_relative '../forms/form_VII'
require_relative '../forms/form_VIII'
require_relative '../forms/form_X'

class FormFactory
  MAPPING = {
    "1" => FormI,
    "2" => FormII,
    "3" => FormIII,
    "4" => FormIV,
    "5" => FormV,
    "6" => FormVI,
    "7" => FormVII,
    "8" => FormVIII,
    "10" => FormX
  }

  def initialize(form, roots)
    @form = form
    @root1 = roots[0]
    @root2 = roots[1]
    @root3 = roots[2]
  end

  def create_form
    MAPPING[@form].new(@root1, @root2, @root3)
  end

end