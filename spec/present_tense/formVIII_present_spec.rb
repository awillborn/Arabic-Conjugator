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

  context "infixed taa present" do
    it 'conjugates form VIII infixed taa present with root1 Thal' do
      verb = Verb.new({root1: "ظ", root2: "ل", root3: "م", form: "8", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يظّلم")
    end
  end

  context "doubled present" do
    it 'conjugates form VIII doubled present' do
      verb = Verb.new({root1: "م", root2: "د", root3: "د", form: "8", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("نمتدّ")
    end
  end

end