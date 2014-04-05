# encoding: utf-8

require_relative '../base'

class FormIIPastBase < Base

  def regular_base
    @root1 + @root2 + "ّ" + @root3
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