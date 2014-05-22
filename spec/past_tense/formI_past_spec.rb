# encoding: utf-8

require 'spec_helper'

describe "Form I Past" do

  context "regular past" do
    it 'conjugates form I regular past' do
      verb = Verb.new({root1: "ك", root2: "ت", root3: "ب", form: "1", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("كتبت")
    end

    it 'conjugates form I regular past with first radical hamza' do
      verb = Verb.new({root1: "ء", root2: "ك", root3: "ل", form: "1", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("أكلت")
    end

    it 'conjugates form I regular past with second radical hamza' do
      verb = Verb.new({root1: "س", root2: "ء", root3: "ل", form: "1", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("سألوا")
    end

    it 'conjugates form I regular past with third radical hamza' do
      verb = Verb.new({root1: "ج", root2: "ر", root3: "ء", form: "1", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("جرؤت")
    end
  end

  context "defective past" do
    it 'conjugates form I defective past with final root waaw, :he' do
      verb = Verb.new({root1: "ش", root2: "ك", root3: "و", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("شكا")
    end

    it 'conjugates form I defective past with final root waaw, :you_m' do
      verb = Verb.new({root1: "ش", root2: "ك", root3: "و", form: "1", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("شكوت")
    end

    it 'conjugates form I defective past with final root yaa' do
      verb = Verb.new({root1: "د", root2: "ع", root3: "ي", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("دعى")
    end

    it 'conjugates form I defective past with final root yaa, you_pl' do
      verb = Verb.new({root1: "د", root2: "ع", root3: "ي", form: "1", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("دعيتم")
    end

    it 'conjugates form I defective past with final root yaa, irregular' do
      verb = Verb.new({root1: "ن", root2: "س", root3: "ي", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("نسي")
    end

    it 'conjugates form I doubly weak verbs with second radical waaw and final radical yaa' do
      verb = Verb.new({root1: "ر", root2: "و", root3: "ي", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("روى")
    end

    it 'conjugates form I doubly weak verbs with first radical waaw and final radical yaa' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ي", form: "1", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("وفوا")
    end

    it 'conjugates form I doubly weak verbs with first radical waaw and final radical yaa' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ي", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("وفى")
    end

    it 'conjugates form I doubly weak verbs with first radical waaw and final radical yaa, irregular' do
      verb = Verb.new({root1: "و", root2: "ل", root3: "ي", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("ولي")
    end
  end

  context "hollow past" do
    it 'conjugates form I hollow past, :he' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "ل", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("قال")
    end

    it 'conjugates form I hollow past, :you_f' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "ل", form: "1", tense: "past", pronoun: :you_f})
      expect(verb.conjugate).to eq("قلت")
    end

    it 'conjugates form I hollow past, irregular, :he' do
      verb = Verb.new({root1: "ل", root2: "ي", root3: "س", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("ليس")
    end

    it 'conjugates form I hollow past with third radical hamza, :he' do
      verb = Verb.new({root1: "ج", root2: "ي", root3: "ء", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("جاء")
    end

    it 'conjugates form I hollow past with third radical hamza, :you_m' do
      verb = Verb.new({root1: "ج", root2: "ي", root3: "ء", form: "1", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("جئت")
    end
  end

  context "assimilated past" do
    it 'conjugates form I assimilated past with root 1 waaw'  do
      verb = Verb.new({root1: "و", root2: "ص", root3: "ف", form: "1", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("وصفت")
    end

    it 'conjugates form I assimilated past with root 1 yaa' do
      verb = Verb.new({root1: "ي", root2: "ق", root3: "ظ", form: "1", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("يقظت")
    end
  end

  context "doubled past" do
    it 'conjugates form I doubled past, :you_m' do
      verb = Verb.new({root1: "ر", root2: "د", root3: "د", form: "1", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("رددت")
    end

    it 'conjugates form I doubled past, :she' do
      verb = Verb.new({root1: "ر", root2: "د", root3: "د", form: "1", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("ردّت")
    end

    it 'conjugates form I doubled assimilated past' do
      verb = Verb.new({root1: "و", root2: "د", root3: "د", form: "1", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("ودّت")
    end
  end

end