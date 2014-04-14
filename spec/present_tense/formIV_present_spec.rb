# encoding: utf-8

require 'spec_helper'

describe "Form IV Present" do

  context 'regular present' do
    it 'conjugates form IV present' do
      verb = Verb.new({root1: "ر", root2: "س", root3: "ل", form: "4", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("ترسلون")
    end

    it 'conjugates form IV regular present with hamza as first radical' do
      verb = Verb.new({root1: "ء", root2: "ل", root3: "م", form: "4", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تؤلم")
    end

    it 'conjugates formIV regular present with hamza as second radical' do
      verb = Verb.new({root1: "س", root2: "ء", root3: "م", form: "4", tense: "present", pronoun: :you_f})
      expect(verb.conjugate).to eq("تسئمين")
    end

    it 'conjugates formIV regular present with hamza as third radical' do
      verb = Verb.new({root1: "ن", root2: "ش", root3: "ء", form: "4", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنشئ")
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

    it 'conjugates formIV doubly weak present - defective and assimilated' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ي", form: "4", tense: "present", pronoun: :you_f})
      expect(verb.conjugate).to eq("توفين")
    end
  end

end