# encoding: utf-8

require_relative '../base'

class FormIIPastBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + "ّ" + @root3
  end

  def doubled_base
    @base
  end

  def adjust_first_radical
    @root1 = "أ"
  end

end