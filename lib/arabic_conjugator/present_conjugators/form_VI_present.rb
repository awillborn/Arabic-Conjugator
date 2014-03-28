# encoding: utf-8

require_relative '../present_tense'

class FormVIPresent < Present

  def defective
    @root3 = "ى"
    super
  end

end