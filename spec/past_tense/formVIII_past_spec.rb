# encoding: utf-8

require 'spec_helper'

describe "Form VIII Past" do

  context "regular past" do
    it 'conjugates form VIII past' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("اكتشفت")
    end

    it 'conjugates form VIII past with first radical hamza, first type' do
      verb = Verb.new({root1: "ء", root2: "ل", root3: "ف", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("ائتلفت")
    end

    it 'conjugates form VIII past with first radical hamza, second type' do
      verb = Verb.new({root1: "ء", root2: "خ", root3: "ذ", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("اتّخذت")
    end

    it 'conjugates form VIII past with second radical hamza' do
      verb = Verb.new({root1: "ب", root2: "ء", root3: "س", form: "8", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("ابتأس")
    end

    it 'conjugates form VIII past with third radical hamza' do
      verb = Verb.new({root1: "ب", root2: "د", root3: "ء", form: "8", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("ابتدأ")
    end
  end

  context "defective past" do
    it 'conjugates form VIII defective past' do
      verb = Verb.new({root1: "ب", root2: "ل", root3: "ي", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("ابتليت")
    end

    it 'conjugates form VIII defective-assimilated past' do
      verb = Verb.new({root1: "و", root2: "ق", root3: "ي", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("اتّقيت")
    end

    it 'conjugates form VIII hollow-defective past' do
      verb = Verb.new({root1: "ح", root2: "و", root3: "ي", form: "8", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("احتووا")
    end
  end

  context "hollow past" do
    it 'conjugates form VIII hollow past, :I' do
      verb = Verb.new({root1: "خ", root2: "و", root3: "ر", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("اخترت")
    end

    it 'conjugates form VIII hollow past, :he' do
      verb = Verb.new({root1: "خ", root2: "و", root3: "ر", form: "8", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("اختار")
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

    it 'conjugates form VIII doubled present, morphed taa' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "8", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("اضطرّت")
    end
  end

  context "assimilated past" do
    it 'conjugates form VIII assimilated past with root1 waaw' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "8", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("اتّفقوا")
    end
  end

  context "assimilated taa past" do
    it 'conjugates form VIII assimilated taa past with root1 Thal' do
      verb = Verb.new({root1: "ظ", root2: "ل", root3: "م", form: "8", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("اظّلم")
    end

    it 'conjugates form VIII assimilated taa past with first radical taa' do
      verb = Verb.new({root1: "ت", root2: "ب", root3: "ع", form: "8", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("اتّبعنا")
    end

    it 'conjugates form VIII assimilated taa past with first radical daal' do
      verb = Verb.new({root1: "د", root2: "ح", root3: "ر", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("ادّحرت")
    end
  end

  context "morphed taa past" do
    it 'conjugates form VIII morphed taa past with first radical Saad' do
      verb = Verb.new({root1: "ص", root2: "د", root3: "م", form: "8", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("اصطدموا")
    end

    it 'conjugates form VIII morphed taa past with first radical zaa' do
      verb = Verb.new({root1: "ز", root2: "ح", root3: "م", form: "8", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("ازدحمت")
    end

    it 'conjugates form VIII morphed taa past with first radical Daad' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ب", form: "8", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("اضطربت")
    end
  end
end