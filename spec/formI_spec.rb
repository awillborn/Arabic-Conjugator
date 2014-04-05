# encoding: utf-8

require 'spec_helper'

describe "Form I" do

  context "#past" do
    it 'conjugates formI past' do
      verb = Verb.new({root1: "ك", root2: "ت", root3: "ب", form: "1", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("كتبت")
    end
  end

  context "#defective_past" do
    it 'conjugates form I defective past with final root waaw' do
      verb = Verb.new({root1: "ش", root2: "ك", root3: "و", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("شكا")
    end

    it 'conjugates form I defective past with final root yaa' do
      verb = Verb.new({root1: "د", root2: "ع", root3: "ي", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("دعى")
    end
  end

  context "#hollow_past" do
    it 'conjugates formI hollow past' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "ل", form: "1", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("قال")
    end
  end

  context "#assimilated_past" do
    it 'conjugates formI assimilated past' do
      verb = Verb.new({root1: "و", root2: "ص", root3: "ف", form: "1", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("وصفت")
    end
  end

  context "#doubled_past" do
    xit 'conjugates formI doubled past' do
      verb = Verb.new({root1: "ر", root2: "د", root3: "د", form: "1", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("رددت")
    end
  end

  context "#present" do
    it 'conjugates formI present' do
      verb = Verb.new({root1: "ك", root2: "ت", root3: "ب", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تكتب")
    end
  end

  context "#doubled_present" do
    xit 'conjugates formI doubled present' do
      verb = Verb.new({root1: "ر", root2: "د", root3: "د", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("ردّت")
    end
  end

  context '#assimilated_present' do
    it 'conjugates formI assimilated present' do
      verb = Verb.new({root1: "و", root2: "ص", root3: "ف", form: "1", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تصف")
    end
  end

end