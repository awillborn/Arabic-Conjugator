# encoding: utf-8

require 'spec_helper'

describe "Form II" do

  context "regular past" do
    it 'conjugates form II regular past' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "2", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("عرّفوا")
    end
  end

  context "defective past" do
    it 'conjugates form II defective past with final root yaa' do
      verb = Verb.new({root1: "س", root2: "م", root3: "ي", form: "2", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("سمّوا")
    end
  end

  context 'doubled past' do
    xit 'conjugates form II doubled past' do
      verb = Verb.new({root1: "ش", root2: "د", root3: "د", form: "2", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("شدّدوا")
    end
  end

  context 'regular present' do
    it 'conjugates form II present' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "2", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يعرّفون")
    end
  end

  context 'defective present' do
    xit 'conjugates form II defective present' do
    end
  end

  context 'hollow present' do
    it 'conjugates form II hollow present' do
      verb = Verb.new({root1: "ز", root2: "و", root3: "ر", form: "2", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يزوّرون")
    end
  end

end