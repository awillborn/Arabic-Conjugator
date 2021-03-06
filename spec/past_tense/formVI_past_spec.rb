# encoding: utf-8

require 'spec_helper'

describe "Form VI Past" do

  context "regular past" do
    it 'conjugates form VI' do
      verb = Verb.new({root1: "ب", root2: "د", root3: "ل", form: "6", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("تبادل")
    end

    it 'conjugates form VI with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ل", root3: "ف", form: "6", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("تآلفنا")
    end

    it 'conjugates form VI past with second radical hamza' do
      verb = Verb.new({root1: "س", root2: "ء", root3: "ل", form: "6", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("تساءلوا")
    end

    it 'conjugates form VI past with third radical hamza' do
      verb = Verb.new({root1: "ك", root2: "ف", root3: "ء", form: "6", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("تكافؤوا")
    end
  end

  context "defective past" do
    it 'conjugates form VI defective past, third radical yaa' do
      verb = Verb.new({root1: "ق", root2: "ض", root3: "ي", form: "6", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("تقاضى")
    end

    it 'conjugates form VI defective past, third radical waaw' do
      verb = Verb.new({root1: "ع", root2: "ف", root3: "و", form: "6", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("تعافوا")
    end

    it 'conjugates form VI defective-assimilated past' do
      verb = Verb.new({root1: "و", root2: "ل", root3: "ي", form: "6", tense: "past", pronoun: :you_f})
      expect(verb.conjugate).to eq("تواليت")
    end

    it 'conjugates form VI hollow-assimilated past' do
      verb = Verb.new({root1: "س", root2: "و", root3: "ي", form: "6", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("تساوت")
    end
  end

  context "hollow past" do
    it 'conjugates form VI hollow past' do
      verb = Verb.new({root1: "ع", root2: "و", root3: "ن", form: "6", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("تعاون")
    end

    it 'conjugates form VI hollow past, middle radical yaa' do
      verb = Verb.new({root1: "ز", root2: "ي", root3: "د", form: "6", tense: "past", pronoun: :you_f})
      expect(verb.conjugate).to eq("تزايدت")
    end
  end

  context "assimilated past" do
    it 'conjugates form VI assimilated past' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "6", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("توافقت")
    end
  end

end