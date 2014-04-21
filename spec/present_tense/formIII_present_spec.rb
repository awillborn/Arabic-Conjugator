# encoding: utf-8

require 'spec_helper'

describe "Form III Present" do

  context 'regular present' do
    it 'conjugates formIII regular present' do
      verb = Verb.new({root1: "ش", root2: "ه", root3: "د", form: "3", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تشاهدون")
    end

    it 'conjugates form III regular present with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ك", root3: "ل", form: "3", tense: "present", pronoun: :they})
        expect(verb.conjugate).to eq("يؤاكلون")
    end

    it 'conjugates form III regular present with second radical hamza' do
      verb = Verb.new({root1: "س", root2: "ء", root3: "ل", form: "3", tense: "present", pronoun: :they})
        expect(verb.conjugate).to eq("يسائلون")
    end

    it 'conjugates form III regular present with third radical hamza' do
      verb = Verb.new({root1: "ف", root2: "ج", root3: "ء", form: "3", tense: "present", pronoun: :we})
        expect(verb.conjugate).to eq("نفاجئ")
    end
  end

  context 'defective present' do
    it 'conjugates formIII defective present with final root waaw, :you_pl' do
      verb = Verb.new({root1: "ن", root2: "د", root3: "ي", form: "3", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تنادون")
    end

    it 'conjugates formIII defective present with final root waaw, :she' do
      verb = Verb.new({root1: "ن", root2: "د", root3: "و", form: "3", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنادي")
    end

    it 'conjugates formIII defective present with final root yaa, :she' do
      verb = Verb.new({root1: "ح", root2: "م", root3: "ي", form: "3", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يحامون")
    end

    it 'conjugates formIII hollow-defective present' do
      verb = Verb.new({root1: "س", root2: "و", root3: "ي", form: "3", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يساوون")
    end

    it 'conjugates formIII hamzated-defective present' do
      verb = Verb.new({root1: "ء", root2: "ت", root3: "ي", form: "3", tense: "present", pronoun: :you_f})
      expect(verb.conjugate).to eq("تؤاتين")
    end
  end

  context 'hollow present' do
    it 'conjugates formIII hollow present, medial waaw' do
      verb = Verb.new({root1: "ح", root2: "و", root3: "ل", form: "3", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تحاول")
    end

    it 'conjugates formIII hollow present, medial yaa' do
      verb = Verb.new({root1: "ب", root2: "ي", root3: "ع", form: "3", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تبايعون")
    end
  end

  context 'assimilated present' do
    it 'conjugates formIII assimilated present, first radical waaw' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "3", tense: "present", pronoun: :I})
      expect(verb.conjugate).to eq("أوافق")
    end

    it 'conjugates formIII assimilated present, first radical yaa' do
      verb = Verb.new({root1: "ي", root2: "س", root3: "ر", form: "3", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يياسر")
    end
  end

end
