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

    it 'conjugates form I regular present with second radical hamza' do
      verb = Verb.new({root1: "س", root2: "ء", root3: "ل", form: "1", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يسألون")
    end

    it 'conjugates form I regular present with third radical hamza' do
      verb = Verb.new({root1: "ج", root2: "ر", root3: "ء", form: "1", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يجرؤون")
    end
  end

  context "doubled present" do
    it 'conjugates form I doubled present' do
      verb = Verb.new({root1: "ر", root2: "د", root3: "د", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تردّ")
    end

    it 'conjugates form I doubled assimilated present' do
      verb = Verb.new({root1: "و", root2: "د", root3: "د", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تودّ")
    end
  end

  context 'assimilated present' do
    it 'conjugates form I assimilated present with root 1 waaw' do
      verb = Verb.new({root1: "و", root2: "ص", root3: "ف", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تصف")
    end

    it 'conjugates form I assimilated present with root 1 yaa' do
      verb = Verb.new({root1: "ي", root2: "ق", root3: "ظ", form: "1", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("نقظ")
    end
  end

  context "hollow present" do
    it 'conjugates form I hollow present, middle root waaw' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "ل", form: "1", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يقول")
    end

    it 'conjugates form I hollow present, middle root yaa' do
      verb = Verb.new({root1: "ب", root2: "ي", root3: "ع", form: "1", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تبيع")
    end

    it 'conjugates form I hollow present, irregular' do
      verb = Verb.new({root1: "ن", root2: "و", root3: "م", form: "1", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تنام")
    end

    it 'conjugates form I hollow present with third radical hamza, :he' do
      verb = Verb.new({root1: "ج", root2: "ي", root3: "ء", form: "1", tense: "present", pronoun: :I})
        expect(verb.conjugate).to eq("أجيئ")
    end
  end

  context "defective present" do
    it 'conjugates form I defective present with final root waaw, pronoun :they' do
      verb = Verb.new({root1: "ش", root2: "ك", root3: "و", form: "1", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يشكون")
    end

    it 'conjugates form I defective present with final root waaw, pronoun :he' do
      verb = Verb.new({root1: "ش", root2: "ك", root3: "و", form: "1", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يشكو")
    end

    it 'conjugates form I defective present with final root yaa, :we' do
      verb = Verb.new({root1: "د", root2: "ع", root3: "ي", form: "1", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("ندعي")
    end

    it 'conjugates form I defective present with final root yaa, :you_pl' do
      verb = Verb.new({root1: "د", root2: "ع", root3: "ي", form: "1", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تدعون")
    end

    it 'conjugates form I defective present with final root yaa, irregular' do
      verb = Verb.new({root1: "س", root2: "ع", root3: "ي", form: "1", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يسعى")
    end

    it 'conjugates form I defective present with final root yaa, irregular' do
      verb = Verb.new({root1: "ن", root2: "س", root3: "ي", form: "1", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تنسون")
    end

    it 'conjugates form I hollow-defective, waaw-yaa, :they' do
      verb = Verb.new({root1: "ر", root2: "و", root3: "ي", form: "1", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يروون")
    end

    it 'conjugates form I hollow-defective, waaw-yaa, :she' do
      verb = Verb.new({root1: "ر", root2: "و", root3: "ي", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تروي")
    end

    it 'conjugates form I hollow-defective, waaw-yaa, irregular' do
      verb = Verb.new({root1: "س", root2: "و", root3: "ي", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تسوى")
    end

    it 'conjugates form I hollow-defective, yaa-yaa' do
      verb = Verb.new({root1: "ح", root2: "ي", root3: "ي", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تحيا")
    end

    it 'conjugates form I assimilated-defective, waaw-yaa' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ي", form: "1", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يفون")
    end

    it 'conjugates form I hamzated-defective, second radical hamza' do 
      verb = Verb.new({root1: "ر", root2: "ء", root3: "ي", form: "1", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يرى")
    end
  end
end