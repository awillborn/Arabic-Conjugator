# encoding: utf-8

require 'spec_helper'

describe FormVIII do

  context "#past" do
    it 'conjugates formVIII past' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("اكتشفت")
    end
  end

  context "#defective_past" do
    it 'conjugates formVIII defective past' do
      verb = Verb.new({root1: "ب", root2: "ل", root3: "ي", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("ابتليت")
    end
  end

  context "#hollow_past" do
    it 'conjugates formVIII hollow past' do
      verb = Verb.new({root1: "خ", root2: "و", root3: "ر", form: "8", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("اخترت")
    end
  end

  context "#assimilated_past" do
    it 'conjugates formVIII assimilated past with root1 waaw' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "8", tense: "past", pronoun: :they})
      expect(verb.conjugate).to eq("اتّفقوا")
    end

    xit 'conjugates formVIII assimilated past with root1 Thal' do
      verb = Verb.new({root1: "ظ", root2: "ل", root3: "م", form: "8", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("اظّلم")
    end
  end

  context '#present' do
    it 'conjugates formVIII present' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "8", tense: "present", pronoun: :I})
      expect(verb.conjugate).to eq("أكتشف")
    end
  end

  context '#assimilated_present' do
    it 'conjugates formVIII assimilated present' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ق", form: "8", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يتّفقون")
    end
  end

end