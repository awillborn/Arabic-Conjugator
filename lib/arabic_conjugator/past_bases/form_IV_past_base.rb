# encoding: utf-8

require_relative '../base'

class FormIVPastBase < Base

  def regular_base
    @base
  end

  def hollow_base
    "أ" + @root1 + @root3
  end

  def defective_base
    @base = @base[0...-1]
    if @pronoun == :he
      @base + "ى"
    elsif [:she, :they].include?(@pronoun)
      @base
    else
      @base + "ي"
    end
  end

end