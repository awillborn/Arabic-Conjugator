# encoding: utf-8

require 'spec_helper'

describe "Form VIII Present" do

  context 'regular present' do
    it 'conjugates form VIII present' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "8", tense: "present", pronoun: :I})
      expect(verb.conjugate).to eq("أكتشف")
    end

    it 'conjugates form VIII present with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ل", root3: "ف", form: "8", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تأتلف")
    end

    it 'conjugates form VIII present with second radical hamza' do
      verb = Verb.new({root1: "ب", root2: "ء", root3: "س", form: "8", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يبتئس")
    end

    it 'conjugates form VIII present with third radical hamza' do
      verb = Verb.new({root1: "ب", root2: "د", root3: "ء", form: "8", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يبتدئون")
    end
  end

  context 'assimilated present' do
    it 'conjugates form VIII assimilated present' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "8", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يتّفقون")
    end
  end

  context "assimilated taa present" do
    it 'conjugates form VIII assimilated taa present with root1 Thal' do
      verb = Verb.new({root1: "ظ", root2: "ل", root3: "م", form: "8", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يظّلم")
    end
  end

  context "morphed taa present" do
    it 'conjugates form VIII morphed taa present with first radical Saad' do
      verb = Verb.new({root1: "ص", root2: "د", root3: "م", form: "8", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يصطدمون")
    end

    it 'conjugates form VIII morphed taa present with first radical zaa' do
      verb = Verb.new({root1: "ز", root2: "ح", root3: "م", form: "8", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تزدحم")
    end
  end

  context "doubled present" do
    it 'conjugates form VIII doubled present' do
      verb = Verb.new({root1: "م", root2: "د", root3: "د", form: "8", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("نمتدّ")
    end
  end

  context "defective present" do
    it 'conjugates form VIII defective present' do
      verb = Verb.new({root1: "ب", root2: "ل", root3: "ي", form: "8", tense: "present", pronoun: :you_f})
      expect(verb.conjugate).to eq("تبتلين")
    end

    it 'conjugates form VIII defective-assimilated present' do
      verb = Verb.new({root1: "و", root2: "ق", root3: "ي", form: "8", tense: "present", pronoun: :I})
      expect(verb.conjugate).to eq("أتّقي")
    end

    it 'conjugates form VIII hollow-defective present' do
      verb = Verb.new({root1: "ح", root2: "و", root3: "ي", form: "8", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تحتوون")
    end
  end

end