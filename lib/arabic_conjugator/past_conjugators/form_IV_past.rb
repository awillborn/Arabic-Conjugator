# encoding: utf-8

require_relative '../past_tense'

class FormIVPast < Past

  def hollow
    @root2 = "ا"
    @base = "أ" + @root1 + @root2 + @root3
    super
  end
end