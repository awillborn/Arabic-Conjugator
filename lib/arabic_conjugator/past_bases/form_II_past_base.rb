# encoding: utf-8

require_relative '../base'

class FormIIPastBase < Base

  def initialize(verb)
    super
    @base = @root1 + @root2 + "ّ" + @root3
  end

  def regular_base
    @root1 + @root2 + "ّ" + @root3
  end

end