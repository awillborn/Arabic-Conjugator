# encoding: utf-8

require 'spec_helper'


describe "Form III" do

  context "regular past" do
    it 'conjugates formIII correctly' do
      verb = Verb.new({root1: "ش", root2: "ه", root3: "د", form: "3", tense: "past", pronoun: :you_pl})
     expect(verb.conjugate).to eq("شاهدتم")
    end
  end

  context "defective past" do
    it 'conjugates formIII defective past with final root yaa' do
      verb = Verb.new({root1: "ن", root2: "د", root3: "ي", form: "3", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("نادى")
    end
  end

  context "assimilated past" do
    it 'conjugates formIII assimilated past' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "3", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("وافقنا")
    end
  end

  context "hollow past" do
    it 'conjugates formIII hollow past' do
      verb = Verb.new({root1: "ح", root2: "و", root3: "ل", form: "3", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("حاولنا")
    end
  end

  context 'regular present' do
    it 'conjugates formIII regular present' do
      verb = Verb.new({root1: "ش", root2: "ه", root3: "د", form: "3", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تشاهدون")
    end
  end

end