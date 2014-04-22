# encoding: utf-8

require 'spec_helper'

describe "Form VII Present" do

  context 'regular present' do
    it 'conjugates formVII present' do
      verb = Verb.new({root1: "ق", root2: "ط", root3: "ع", form: "7", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنقطع")
    end

    it 'conjugates form VII present with final radical hamza' do
      verb = Verb.new({root1: "ط", root2: "ف", root3: "ء", form: "7", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنطفئ")
    end
  end

  context "hollow present" do
    it 'conjugates formVII present, middle radical waaw, :she' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "د", form: "7", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنقاد")
    end

    it 'conjugates formVII present, middle radical yaa' do
      verb = Verb.new({root1: "ب", root2: "ي", root3: "ع", form: "7", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنباع")
    end
  end

  context "doubled present" do
    it 'conjugates formVII doubled past, :she' do
      verb = Verb.new({root1: "ض", root2: "م", root3: "م", form: "7", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنضمّ")
    end
  end

  context "defective present" do
    it 'conjugates formVII defective present' do
      verb = Verb.new({root1: "ق", root2: "ض", root3: "ي", form: "7", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنقضي")
    end

    it 'conjugates formVII defective-hollow present' do
      verb = Verb.new({root1: "ز", root2: "و", root3: "ي", form: "7", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنزوي")
    end
  end

end
