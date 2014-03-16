# encoding: utf-8

class TypeFactory
  attr_reader :type

  def initialize(root1, root2, root3)
    @root1 = root1
    @root2 = root2
    @root3 = root3
    @type = find_type
  end

  def find_type
    if @root2 == "و" || @root2 == "ي"
      "hollow"
    elsif @root3 == "و" || @root3 == "ي"
      "defective"
    elsif @root2 == @root3
      "doubled"
    elsif @root1 == "و" || @root1 == "ي"
      "assimilated"
    else
      "regular"
    end
  end
end