# encoding: utf-8

require 'spec_helper'

describe "Form III Past" do

  context "regular past" do
    it 'conjugates formIII' do
      verb = Verb.new({root1: "ش", root2: "ه", root3: "د", form: "3", tense: "past", pronoun: :you_pl})
     expect(verb.conjugate).to eq("شاهدتم")
    end

    it 'conjugates form III regular past with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ك", root3: "ل", form: "3", tense: "past", pronoun: :you_pl})
        expect(verb.conjugate).to eq("آكلتم")
    end

    it 'conjugates form III regular past with second radical hamza' do
      verb = Verb.new({root1: "س", root2: "ء", root3: "ل", form: "3", tense: "past", pronoun: :you_pl})
        expect(verb.conjugate).to eq("ساءلتم")
    end

    it 'conjugates form III regular past with third radical hamza' do
      verb = Verb.new({root1: "ف", root2: "ج", root3: "ء", form: "3", tense: "past", pronoun: :she})
        expect(verb.conjugate).to eq("فاجأت")
    end
  end

  context "defective past" do
    it 'conjugates formIII defective past with final root waaw' do
      verb = Verb.new({root1: "ن", root2: "د", root3: "ي", form: "3", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("نادى")
    end

    it 'conjugates formIII defective past with final root yaa, :she' do
      verb = Verb.new({root1: "ح", root2: "م", root3: "ي", form: "3", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("حامى")
    end

    it 'conjugates formIII hollow-defective past' do
      verb = Verb.new({root1: "س", root2: "و", root3: "ي", form: "3", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("ساوى")
    end

    it 'conjugates formIII hamzated-defective past' do
      verb = Verb.new({root1: "ء", root2: "ت", root3: "ي", form: "3", tense: "past", pronoun: :you_f})
      expect(verb.conjugate).to eq("آتيت")
    end
  end

  context "assimilated past" do
    it 'conjugates formIII assimilated past' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "3", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("وافقنا")
    end

    it 'conjugates formIII assimilated past, first radical yaa' do
      verb = Verb.new({root1: "ي", root2: "س", root3: "ر", form: "3", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("ياسرنا")
    end
  end

  context "hollow past" do
    it 'conjugates formIII hollow past, first radical waaw' do
      verb = Verb.new({root1: "ح", root2: "و", root3: "ل", form: "3", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("حاولنا")
    end

    it 'conjugates formIII hollow past, medial yaa' do
      verb = Verb.new({root1: "ب", root2: "ي", root3: "ع", form: "3", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("بايعتم")
    end
  end

end
