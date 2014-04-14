# encoding: utf-8

require 'spec_helper'

describe "Form II Past" do

  context "regular past" do
    it 'conjugates form II regular past' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "2", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("عرّفوا")
    end

    it 'conjugates form II regular past with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ث", root3: "ر", form: "2", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("أثّروا")
    end

    it 'conjugates form II regular past with third radical hamza' do
      verb = Verb.new({root1: "ه", root2: "ن", root3: "ء", form: "2", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("هنّأنا")
    end
  end

  context "defective past" do
    it 'conjugates form II defective past with final root yaa' do
      verb = Verb.new({root1: "س", root2: "م", root3: "ي", form: "2", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("سمّوا")
    end

    it 'conjugates form II doubly weak verbs with first radical waaw and final radical yaa' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ي", form: "2", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("وفّت")
    end
  end

  context 'doubled past' do
    it 'conjugates form II doubled past' do
      verb = Verb.new({root1: "ش", root2: "د", root3: "د", form: "2", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("شدّدوا")
    end
  end

  context 'assimilated past' do
    it 'conjugates form II assimilated past' do
      verb = Verb.new({root1: "ي", root2: "س", root3: "ر", form: "2", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("يسّرتم")
    end
  end

  context 'hollow past' do
    it 'conjugates form II hollow past with waaw as second radical' do
      verb = Verb.new({root1: "ص", root2: "و", root3: "ت", form: "2", tense: "past", pronoun: :you_f})
      expect(verb.conjugate).to eq("صوّتت")
    end
  end

end