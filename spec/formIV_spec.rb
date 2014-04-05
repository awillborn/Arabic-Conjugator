# encoding: utf-8

require 'spec_helper'

describe "Form IV" do

  context "#past" do
    it 'conjugates formIV past' do
      verb = Verb.new({root1: "ر", root2: "س", root3: "ل", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أرسلتم")
    end
  end

  context "#defective_past" do
    it 'conjugates formIV defective past' do
      verb = Verb.new({root1: "ج", root2: "ر", root3: "ي", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أجريتم")
    end
  end

  context "#hollow_past" do
    it 'conjugates formIV hollow past' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "م", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أقمتم")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formIV doubled past' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "4", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("أضرّ")
    end
  end

  context '#present' do
    it 'conjugates formIV present' do
      verb = Verb.new({root1: "ر", root2: "س", root3: "ل", form: "4", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("ترسلون")
    end
  end
end