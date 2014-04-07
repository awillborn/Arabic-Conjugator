# encoding: utf-8

class TypeFactory
  attr_reader :type

  def initialize(root1, root2, root3, form)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @form = form
  end

  def load_types
    types = []
    types << "hollow" if hollow?
    types << "defective" if defective?
    types << "doubled" if doubled?
    types << "assimilated" if assimilated?
    types << "infixed_taa" if infixed_taa?
    types << "regular" if types.empty?
    types
  end

  def hollow?
    @root2 == "و" || @root2 == "ي"
  end

  def defective?
    @root3 == "و" || @root3 == "ي"
  end

  def doubled?
    @root2 == @root3
  end

  def assimilated?
    @root1 == "و" || @root1 == "ي"
  end

  def infixed_taa?
    @form == "8" && ["ت", "ث", "د", "ذ", "ز", "ص", "ض", "ط", "ظ"].include?(@root1)
  end

end