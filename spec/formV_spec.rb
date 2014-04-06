# encoding: utf-8

require 'spec_helper'

describe "Form V" do

  context "regular past" do
    it 'conjugates formV past' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "5", tense: "past", pronoun: :you_f})
      expect(verb.conjugate).to eq("تعرّفت")
    end
  end

  context "defective past" do
    it 'conjugates formV defective past' do
      verb = Verb.new({root1: "ح", root2: "د", root3: "ي", form: "5", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("تحدّيت")
    end
  end

  context 'doubled past' do
    it 'conjugates form V doubled past' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "5", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("تضرّرت")
    end
  end

  context 'hollow past' do
    it 'conjugates form V hollow past' do
      verb = Verb.new({root1: "ع", root2: "ي", root3: "ن", form: "5", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("تعيّنوا")
    end
  end

  context 'assimilated past' do
    it 'conjugates form V assimilated past' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ر", form: "5", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("توفّروا")
    end
  end

  context 'regular present' do
    it 'conjugates formV present' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "5", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تتعرّف")
    end
  end

  context 'assimilated present' do
    it 'conjugates form V assimilated present' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ر", form: "5", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يتوفّر")
    end
  end

  context 'doubled present' do
    it 'conjugates formV doubled present' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "5", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تتضرّر")
    end
  end
end