# encoding: utf-8

require 'spec_helper'


describe "Form III" do

  context "#past" do
    it 'conjugates formIII correctly' do
      verb = Verb.new({root1: "ش", root2: "ه", root3: "د", form: "3", tense: "past", pronoun: :you_pl})
     expect(verb.conjugate).to eq("شاهدتم")
    end
  end

  context "#defective_past" do
    it 'conjugates formIII defective past' do
      verb = Verb.new({root1: "ن", root2: "د", root3: "ي", form: "3", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("نادى")
    end
  end

  context '#present' do
    it 'conjugates formIII present' do
      verb = Verb.new({root1: "ش", root2: "ه", root3: "د", form: "3", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تشاهدون")
    end
  end

end