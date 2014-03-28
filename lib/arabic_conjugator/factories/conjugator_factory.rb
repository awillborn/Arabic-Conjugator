require_relative '../past_conjugators/form_I_past'
require_relative '../past_conjugators/form_II_past'
require_relative '../past_conjugators/form_III_past'
require_relative '../past_conjugators/form_IV_past'
require_relative '../past_conjugators/form_V_past'
require_relative '../past_conjugators/form_VI_past'
require_relative '../past_conjugators/form_VII_past'
require_relative '../past_conjugators/form_VIII_past'
require_relative '../past_conjugators/form_X_past'
require_relative '../present_conjugators/form_I_present'
require_relative '../present_conjugators/form_II_present'
require_relative '../present_conjugators/form_III_present'
require_relative '../present_conjugators/form_IV_present'
require_relative '../present_conjugators/form_V_present'
require_relative '../present_conjugators/form_VI_present'
require_relative '../present_conjugators/form_VII_present'
require_relative '../present_conjugators/form_VIII_present'
require_relative '../present_conjugators/form_X_present'


class ConjugatorFactory
  MAPPING = {
    "FormIpast" => FormIPast,
    "FormIIpast" => FormIIPast,
    "FormIIIpast" => FormIIIPast,
    "FormIVpast" => FormIVPast,
    "FormVpast" => FormVPast,
    "FormVIpast" => FormVIPast,
    "FormVIIpast" => FormVIIPast,
    "FormVIIIpast" => FormVIIIPast,
    "FormXpast" => FormXPast,
    "FormIpresent" => FormIPresent,
    "FormIIpresent" => FormIIPresent,
    "FormIIIpresent" => FormIIIPresent,
    "FormIVpresent" => FormIVPresent,
    "FormVpresent" => FormVPresent,
    "FormVIpresent" => FormVIPresent,
    "FormVIIpresent" => FormVIIPresent,
    "FormVIIIpresent" => FormVIIIPresent,
    "FormXpresent" => FormXPresent,
  }

  def initialize(form, tense)
    @form_name = form.class.to_s
    @tense = tense
  end

  def create_conjugator
    MAPPING[@form_name.concat(@tense)]
  end

end
