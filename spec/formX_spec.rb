# encoding: utf-8

require 'spec_helper'

describe FormX do
  context "#past" do
    it 'conjugates formX past' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استكشفتم")
    end
  end

  context "#defective_past" do
    it 'conjugates formX defective past' do
      verb = Verb.new({root1: "د", root2: "ع", root3: "ي", form: "10", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("استدعينا")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formX doubled past' do
      verb = Verb.new({root1: "ح", root2: "ب", root3: "ب", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استحببتم")
    end
  end

  context "#hollow_past" do
    it 'conjugates formX hollow past' do
      verb = Verb.new({root1: "ع", root2: "ي", root3: "د", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استعدتم")
    end
  end


 context '#present' do
    it 'conjugates formX present' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "10", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تستكشفون")
    end
  end
end