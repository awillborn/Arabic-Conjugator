# encoding: utf-8

require 'spec_helper'

describe "Form VII" do

  context "#past" do
    it 'conjugates formVII past' do
      verb = Verb.new({root1: "ق", root2: "ط", root3: "ع", form: "7", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("انقطعت")
    end
  end

  context "#defective_past" do
    it 'conjugates formVII defective past' do
      verb = Verb.new({root1: "ق", root2: "ض", root3: "ي", form: "7", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("انقضت")
    end
  end

  context '#present' do
    it 'conjugates formVII present' do
      verb = Verb.new({root1: "ق", root2: "ط", root3: "ع", form: "7", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنقطع")
    end
  end

end