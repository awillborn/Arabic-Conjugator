# encoding: utf-8

require_relative '../form'
require_relative '../factories/conjugator_factory'

class FormVIII < Form

  def initialize(root1, root2, root3, tense, pronoun)
    super
    @base = "ا" + @root1 + "ت" + @root2 + @root3
    @masdar = "الا" + @root1 + "ت" + @root2 + "ا" + @root3
    @type = "assimilated" if assimilated?
  end

  def assimilated?
    ["ظ", "ط", "ض", "ص", "ز", "ذ", "د", "ث", "ت"].include?(@root1)
  end

end