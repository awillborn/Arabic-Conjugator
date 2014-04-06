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

  context 'defective present' do
    it 'conjugates formIII defective present with final root yaa, :you_pl' do
      verb = Verb.new({root1: "ن", root2: "د", root3: "ي", form: "3", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تنادون")
    end

    it 'conjugates formIII defective present with final root yaa, :she' do
      verb = Verb.new({root1: "ن", root2: "د", root3: "ي", form: "3", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنادي")
    end
  end

  context 'hollow present' do
    it 'conjugates formIII hollow present' do
      verb = Verb.new({root1: "ح", root2: "و", root3: "ل", form: "3", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تحاول")
    end
  end

  context 'assimilated present' do
    it 'conjugates formIII assimilated present' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "3", tense: "present", pronoun: :I})
      expect(verb.conjugate).to eq("أوافق")
    end
  end

end
