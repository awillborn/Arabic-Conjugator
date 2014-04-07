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
      expect(verb.conjugate).to eq("تكافأوا")
    end
  end

  context "defective past" do
    it 'conjugates form VI defective past' do
      verb = Verb.new({root1: "ق", root2: "ض", root3: "ي", form: "6", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("تقاضى")
    end
  end

  context "hollow past" do
    it 'conjugates form VI hollow past' do
      verb = Verb.new({root1: "ع", root2: "و", root3: "ن", form: "6", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("تعاون")
    end
  end

  context "assimilated past" do
    it 'conjugates form VI assimilated past' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "6", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("توافقت")
    end
  end

end