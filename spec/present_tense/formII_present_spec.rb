# encoding: utf-8

require 'spec_helper'

describe "Form II Present" do

  context 'regular present' do
    it 'conjugates form II regular present' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "2", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يعرّفون")
    end

    it 'conjugates form II regular present with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ث", root3: "ر", form: "2", tense: "present", pronoun: :they})
        expect(verb.conjugate).to eq("يؤثّرون")
    end

    it 'conjugates form II regular present with third radical hamza' do
      verb = Verb.new({root1: "ه", root2: "ن", root3: "ء", form: "2", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تهنّئ")
    end
  end

  context 'doubled present' do
    it 'conjugates form II doubled present verbs' do
      verb = Verb.new({root1: "ش", root2: "د", root3: "د", form: "2", tense: "present", pronoun: :I})
      expect(verb.conjugate).to eq("أشدّد")
    end
  end

  context 'defective present' do
    it 'conjugates form II defective present' do
      verb = Verb.new({root1: "ص", root2: "ل", root3: "ي", form: "2", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تصلّي")
    end

    it 'conjugates form II doubly weak verbs with first radical waaw and final radical yaa' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ي", form: "2", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("توفّي")
    end

    it 'conjugates form II hollow-defective present' do
      verb = Verb.new({root1: "ح", root2: "ي", root3: "ي", form: "2", tense: "present", pronoun: :you_f})
      expect(verb.conjugate).to eq("تحيّين")
    end

    it 'conjugates form II hollow-defective present' do
      verb = Verb.new({root1: "ر", root2: "ب", root3: "ي", form: "2", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("نربّي")
    end
  end

  context 'hollow present' do
    it 'conjugates form II hollow present' do
      verb = Verb.new({root1: "ز", root2: "و", root3: "ر", form: "2", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يزوّرون")
    end

    it 'conjugates form II hollow present with third radical hamza' do
      verb = Verb.new({root1: "ب", root2: "و", root3: "ء", form: "2", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تبوّئ")
    end

    it 'conjugates form II hollow present with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ي", root3: "د", form: "2", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يؤيّدون")
    end
  end

  context 'assimilated present' do
    it 'conjugates form II assimilated present tense' do
      verb = Verb.new({root1: "ي", root2: "س", root3: "ر", form: "2", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تيسّر")
    end
  end

end
