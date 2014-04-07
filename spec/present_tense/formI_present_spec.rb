# encoding: utf-8

require 'spec_helper'

describe "Form I Present" do

  context "regular present" do
    it 'conjugates form I present' do
      verb = Verb.new({root1: "ك", root2: "ت", root3: "ب", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تكتب")
    end

    it 'conjugates form I regular present with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ك", root3: "ل", form: "1", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("نأكل")
    end
  end

  context "doubled present" do
    it 'conjugates form I doubled present' do
      verb = Verb.new({root1: "ر", root2: "د", root3: "د", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تردّ")
    end
  end

  context 'assimilated present' do
    it 'conjugates form I assimilated present with root 1 waaw' do
      verb = Verb.new({root1: "و", root2: "ص", root3: "ف", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تصف")
    end
  end

  context "hollow present" do
    it 'conjugates form I hollow present' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "ل", form: "1", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يقول")
    end
  end

  context "defective present" do
    it 'conjugates form I defective present with final root waaw' do
      verb = Verb.new({root1: "ش", root2: "ك", root3: "و", form: "1", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يشكون")
    end

    it 'conjugates form I defective past with final root yaa' do
      verb = Verb.new({root1: "د", root2: "ع", root3: "ي", form: "1", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("ندعي")
    end

    it 'conjugates form I doubly weak verbs with second radical waaw and final radical yaa' do
      verb = Verb.new({root1: "ر", root2: "و", root3: "ي", form: "1", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يروون")
    end
  end

end