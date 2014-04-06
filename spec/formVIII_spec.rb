# encoding: utf-8

require 'spec_helper'

describe "Form VIII" do

  context "regular past" do
    it 'conjugates form VIII past' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("اكتشفت")
    end
  end

  context "defective past" do
    it 'conjugates form VIII defective past' do
      verb = Verb.new({root1: "ب", root2: "ل", root3: "ي", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("ابتليت")
    end
  end

  context "hollow past" do
    it 'conjugates form VIII hollow past' do
      verb = Verb.new({root1: "خ", root2: "و", root3: "ر", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("اخترت")
    end
  end

  context "doubled past" do
    it 'conjugates form VIII doubled past, :he' do
      verb = Verb.new({root1: "م", root2: "د", root3: "د", form: "8", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("امتدّ")
    end

    it 'conjugates form VIII doubled past, :I' do
      verb = Verb.new({root1: "م", root2: "د", root3: "د", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("امتددت")
    end
  end

  context "assimilated past" do
    it 'conjugates form VIII assimilated past with root1 waaw' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "8", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("اتّفقوا")
    end

    xit 'conjugates form VIII assimilated past with root1 Thal' do
      verb = Verb.new({root1: "ظ", root2: "ل", root3: "م", form: "8", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("اظّلم")
    end
  end

  context 'regular present' do
    it 'conjugates form VIII present' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "8", tense: "present", pronoun: :I})
      expect(verb.conjugate).to eq("أكتشف")
    end
  end

  context 'assimilated present' do
    it 'conjugates form VIII assimilated present' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "8", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يتّفقون")
    end
  end

  context "doubled present" do
    it 'conjugates form VIII doubled present' do
      verb = Verb.new({root1: "م", root2: "د", root3: "د", form: "8", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("نمتدّ")
    end
  end

end