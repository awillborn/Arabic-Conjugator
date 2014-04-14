require_relative '../past_bases/form_I_past_base'
require_relative '../past_bases/form_II_past_base'
require_relative '../past_bases/form_III_past_base'
require_relative '../past_bases/form_IV_past_base'
require_relative '../past_bases/form_V_past_base'
require_relative '../past_bases/form_VI_past_base'
require_relative '../past_bases/form_VII_past_base'
require_relative '../past_bases/form_VIII_past_base'
require_relative '../past_bases/form_X_past_base'
require_relative '../present_bases/form_I_present_base'
require_relative '../present_bases/form_II_present_base'
require_relative '../present_bases/form_III_present_base'
require_relative '../present_bases/form_IV_present_base'
require_relative '../present_bases/form_V_present_base'
require_relative '../present_bases/form_VI_present_base'
require_relative '../present_bases/form_VII_present_base'
require_relative '../present_bases/form_VIII_present_base'
require_relative '../present_bases/form_X_present_base'


class BaseFactory
  FORM_MAPPING = {
    "1past" => FormIPastBase,
    "2past" => FormIIPastBase,
    "3past" => FormIIIPastBase,
    "4past" => FormIVPastBase,
    "5past" => FormVPastBase,
    "6past" => FormVIPastBase,
    "7past" => FormVIIPastBase,
    "8past" => FormVIIIPastBase,
    "10past" => FormXPastBase,
    "1present" => FormIPresentBase,
    "2present" => FormIIPresentBase,
    "3present" => FormIIIPresentBase,
    "4present" => FormIVPresentBase,
    "5present" => FormVPresentBase,
    "6present" => FormVIPresentBase,
    "7present" => FormVIIPresentBase,
    "8present" => FormVIIIPresentBase,
    "10present" => FormXPresentBase
  }

  def initialize(verb)
    @verb = verb
    @form_name = verb.form
    @tense = verb.opts[:tense]
    @types = verb.types[0]
  end

  def load_base
    form = FORM_MAPPING[@form_name.concat(@tense)].new(@verb)
    case @types
    when "first_third_weak"
      form.first_third_weak_base
    when "assimilated"
      form.assimilated_base
    when "defective"
      form.defective_base
    when "hollow"
      form.hollow_base
    when "doubled"
      form.doubled_base
    when "regular"
      form.regular_base
    when "assimilated_taa"
      form.assimilated_taa_base
    when "morphed_taa"
      form.morphed_taa_base
    end
  end

end
