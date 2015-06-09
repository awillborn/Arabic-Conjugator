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
    types << "assimilated defective" if assimilated_defective?
    types << "hollow defective" if hollow_defective?
    types << "defective" if defective?
    types << "hollow" if hollow?
    types << "doubled" if doubled?
    types << "assimilated" if assimilated?
    types << "assimilated_taa" if assimilated_taa?
    types << "morphed_taa" if morphed_taa?
    types << "regular" if types.empty?
    types
  end

  def assimilated_defective?
    (@root1 == "و" || @root1 == "ي") && (@root3 == "و" || @root3 == "ي")
  end

  def hollow_defective?
    (@root2 == "و" || @root2 == "ي") && (@root3 == "و" || @root3 == "ي")
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

  def assimilated_taa?
    @form == "8" && ["ت", "ث", "د", "ط", "ظ"].include?(@root1)
  end

  def morphed_taa?
    @form == "8" && ["ذ", "ز", "ص", "ض"].include?(@root1)
  end
end
