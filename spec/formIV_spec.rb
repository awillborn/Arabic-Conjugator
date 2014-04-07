# encoding: utf-8

require 'spec_helper'

describe "Form IV" do

  context "regular past" do
    it 'conjugates formIV regular past' do
      verb = Verb.new({root1: "ر", root2: "س", root3: "ل", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أرسلتم")
    end

    it 'conjugates formIV regular past with hamza as first radical' do
      verb = Verb.new({root1: "ء", root2: "ل", root3: "م", form: "4", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("آلمت")
    end
  end

  context "defective past" do
    it 'conjugates formIV defective past' do
      verb = Verb.new({root1: "ج", root2: "ر", root3: "ي", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أجريتم")
    end
  end

  context "hollow past" do
    it 'conjugates formIV hollow past, :you_pl' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "م", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أقمتم")
    end

    it 'conjugates formIV hollow past, :he' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "م", form: "4", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("أقام")
    end
  end

  context "assimilated past" do
    it 'conjugates formIV assimilated past' do
      verb = Verb.new({root1: "و", root2: "ق", root3: "ف", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أوقفتم")
    end
  end

  context 'doubled past' do
    it 'conjugates formIV doubled past, :he' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "4", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("أضرّ")
    end

    it 'conjugates formIV doubled past, :I' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "4", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("أضررت")
    end
  end

  context 'regular present' do
    it 'conjugates form IV present' do
      verb = Verb.new({root1: "ر", root2: "س", root3: "ل", form: "4", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("ترسلون")
    end

    it 'conjugates form IV regular present with hamza as first radical' do
      verb = Verb.new({root1: "ء", root2: "ل", root3: "م", form: "4", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تؤلم")
    end
  end

  context 'hollow present' do
    it 'conjugates form IV hollow present' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "م", form: "4", tense: "present", pronoun: :I})
      expect(verb.conjugate).to eq("أقيم")
    end
  end

  context 'assimilated present' do
    it 'conjugates form IV assimilated present' do
      verb = Verb.new({root1: "و", root2: "ق", root3: "ف", form: "4", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("أوقفنا")
    end
  end

  context 'doubled present' do
    it 'conjugates form IV doubled present' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "4", tense: "present", pronoun: :I})
      expect(verb.conjugate).to eq("أضرّ")
    end
  end

  context 'defective present' do
    it 'conjugates form IV defective present, :you_pl' do
      verb = Verb.new({root1: "ج", root2: "ر", root3: "ي", form: "4", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تجرون")
    end

    it 'conjugates form IV defective present, :I' do
      verb = Verb.new({root1: "ج", root2: "ر", root3: "ي", form: "4", tense: "present", pronoun: :I})
      expect(verb.conjugate).to eq("أجري")
    end
  end
end