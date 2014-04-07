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
  end

  context "defective past" do
    it 'conjugates form I defective past with final root waaw' do
      verb = Verb.new({root1: "ش", root2: "ك", root3: "و", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("شكا")
    end

    it 'conjugates form I defective past with final root yaa' do
      verb = Verb.new({root1: "د", root2: "ع", root3: "ي", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("دعى")
    end
  end

  context "hollow past" do
    it 'conjugates form I hollow past' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "ل", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("قال")
    end
  end

  context "assimilated past" do
    it 'conjugates form I assimilated past with root 1 waaw'  do
      verb = Verb.new({root1: "و", root2: "ص", root3: "ف", form: "1", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("وصفت")
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
  end

end