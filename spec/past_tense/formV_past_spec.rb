# encoding: utf-8

require 'spec_helper'

describe "Form V Past" do

  context "regular past" do
    it 'conjugates form V past' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "5", tense: "past", pronoun: :you_f})
      expect(verb.conjugate).to eq("تعرّفت")
    end

    it 'conjugates form V past with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ث", root3: "ر", form: "5", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("تأثّر")
    end

    it 'conjugates form V past with second radical hamza' do
      verb = Verb.new({root1: "ر", root2: "ء", root3: "س", form: "5", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("ترأّسنا")
    end

    it 'conjugates form V past with third radical hamza' do
      verb = Verb.new({root1: "ن", root2: "ب", root3: "ء", form: "5", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("تنبّأ")
    end
  end

  context "defective past" do
    it 'conjugates formV defective past' do
      verb = Verb.new({root1: "ح", root2: "د", root3: "ي", form: "5", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("تحدّيت")
    end

    it 'conjugates form V defective past, final radical waaw, :you_f' do
      verb = Verb.new({root1: "غ", root2: "د", root3: "و", form: "5", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("تغدّوا")
    end

    it 'conjugates form V doubly weak defective present, first radical waaw' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ي", form: "5", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("توفّيت")
    end
  end

  context 'doubled past' do
    it 'conjugates form V doubled past' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "5", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("تضرّرت")
    end
  end

  context 'hollow past' do
    it 'conjugates form V hollow past, middle radical yaa' do
      verb = Verb.new({root1: "ع", root2: "ي", root3: "ن", form: "5", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("تعيّنوا")
    end

    it 'conjugates form V hollow past, middle radical waaw' do
      verb = Verb.new({root1: "ص", root2: "و", root3: "ر", form: "5", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("تصوّرت")
    end
  end

  context 'assimilated past' do
    it 'conjugates form V assimilated past, first radical waaw' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ر", form: "5", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("توفّروا")
    end

    it 'conjugates form V assimilated past, first radical yaa' do
      verb = Verb.new({root1: "ي", root2: "ق", root3: "ظ", form: "5", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تيقّظتم")
    end
  end

end