# encoding: utf-8

require 'spec_helper'

describe "Form VI Present" do

  context 'regular present' do
    it 'conjugates formVI present' do
      verb = Verb.new({root1: "ب", root2: "د", root3: "ل", form: "6", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يتبادل")
    end

    it 'conjugates form VI present with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ل", root3: "ف", form: "6", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("نتآلف")
    end

    it 'conjugates form VI present with second radical hamza' do
      verb = Verb.new({root1: "س", root2: "ء", root3: "ل", form: "6", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("نتساءل")
    end

    it 'conjugates form VI present with third radical hamza' do
      verb = Verb.new({root1: "ك", root2: "ف", root3: "ء", form: "6", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يتكافؤون")
    end
  end

  context "assimilated present" do
    it 'conjugates form VI assimilated present' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "6", tense: "present", pronoun: :you_f})
      expect(verb.conjugate).to eq("تتوافقين")
    end
  end

  context "defective present" do
    it 'conjugates form VI defective present, :he' do
      verb = Verb.new({root1: "ق", root2: "ض", root3: "ي", form: "6", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يتقاضى")
    end

    it 'conjugates form VI defective present, :they' do
      verb = Verb.new({root1: "ق", root2: "ض", root3: "ي", form: "6", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يتقاضون")
    end

    it 'conjugates form VI defective-assimilated present' do
      verb = Verb.new({root1: "و", root2: "ل", root3: "ي", form: "6", tense: "present", pronoun: :you_f})
      expect(verb.conjugate).to eq("تتوالين")
    end

    it 'conjugates form VI hollow-assimilated present' do
      verb = Verb.new({root1: "س", root2: "و", root3: "ي", form: "6", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تتساوى")
    end
  end

  context "hollow present" do
    it 'conjugates form VI hollow present, middle radical waaw' do
      verb = Verb.new({root1: "ع", root2: "و", root3: "ن", form: "6", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("نتعاون")
    end

    it 'conjugates form VI hollow present, middle radical yaa' do
      verb = Verb.new({root1: "ز", root2: "ي", root3: "د", form: "6", tense: "present", pronoun: :you_f})
      expect(verb.conjugate).to eq("تتزايدين")
    end
  end

end