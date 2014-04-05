# encoding: utf-8

require 'spec_helper'

describe "Form II" do

  context "#past" do
    it 'conjugates formII past' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "2", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("عرّفوا")
    end
  end

  context "#defective_past" do
    it 'conjugates formII defective past' do
      verb = Verb.new({root1: "س", root2: "م", root3: "ي", form: "2", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("سمّوا")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formII doubled past' do
      verb = Verb.new({root1: "ش", root2: "د", root3: "د", form: "2", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("شدّدوا")
    end
  end

  context '#present' do
    it 'conjugates formII present' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "2", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يعرّفون")
    end
  end

end