# encoding: utf-8

require_relative '../form'

class FormVIII < Form

  def initialize(root1, root2, root3)
    super
    @type = "assimilated" if assimilated?
    @base =  "ا" + @root1 + "ت" + @root2 + @root3
  end

  def assimilated?
    ["ظ", "ط", "ض", "ص", "ز", "ذ", "د", "ث", "ت"].include?(@root1)
  end

end