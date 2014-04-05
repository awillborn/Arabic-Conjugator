# encoding: utf-8

require_relative '../base'

class FormIVPastBase < Base

  def regular_base
    @base
  end

  def hollow_base
    "أ" + @root1 + @root3
  end

end