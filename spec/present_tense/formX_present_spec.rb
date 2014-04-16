# encoding: utf-8

require 'spec_helper'

describe "Form X Present" do

  context 'regular present' do
    it 'conjugates form X regular present' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "10", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تستكشفون")
    end

    it 'conjugates form X regular present with hamza as first radical' do
      verb = Verb.new({root1: "ء", root2: "ج", root3: "ر", form: "10", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تستأجرون")
    end

    it 'conjugates form X regular present with hamza as third radical' do
      verb = Verb.new({root1: "ه", root2: "ز", root3: "ء", form: "10", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تستهزئ")
    end
  end

  context "assimilated present" do
    it 'conjugates form X assimilated present' do
      verb = Verb.new({root1: "و", root2: "ع", root3: "ب", form: "10", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يستوعبون")
    end
  end

  context 'doubled present' do
    it 'conjugates form X doubled present, :you_pl' do
      verb = Verb.new({root1: "ح", root2: "ب", root3: "ب", form: "10", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تستحبّون")
    end
  end

  context "hollow present" do
    it 'conjugates form X hollow present' do
      verb = Verb.new({root1: "ع", root2: "ي", root3: "د", form: "10", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تستعيدون")
    end
  end

  context "defective present" do
    it 'conjugates form X defective present' do
      verb = Verb.new({root1: "د", root2: "ع", root3: "ي", form: "10", tense: "present", pronoun: :we})
      expect(verb.conjugate).to eq("نستدعي")
    end

    it 'conjugates form X defective-assimilated present' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ي", form: "10", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تستوفون")
    end

    it 'conjugates form X hollow-defective present' do
      verb = Verb.new({root1: "ح", root2: "ي", root3: "ي", form: "10", tense: "present", pronoun: :you_f})
      expect(verb.conjugate).to eq("تستحيين")

    end
  end

end