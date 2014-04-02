# encoding: utf-8

require 'spec_helper'

describe FormVIII do

  context "#past" do
    it 'conjugates formVIII past' do
      verb = Verb.new("ك", "ش", "ف", "8", "past", :I)
      expect(verb.conjugate).to eq("اكتشفت")
    end
  end

  context "#defective_past" do
    it 'conjugates formVIII defective past' do
      verb = Verb.new("ب", "ل", "ي", "8", "past", :I)
      expect(verb.conjugate).to eq("ابتليت")
    end
  end

  context "#hollow_past" do
    it 'conjugates formVIII hollow past' do
      verb = Verb.new("خ", "و", "ر", "8", "past", :I)
      expect(verb.conjugate).to eq("اخترت")
    end
  end

  context "#assimilated_past" do
    it 'conjugates formVIII assimilated past with root1 waaw' do
      verb = Verb.new("و", "ف", "ق", "8", "past", :they)
      expect(verb.conjugate).to eq("اتّفقوا")
    end

    xit 'conjugates formVIII assimilated past with root1 Thal' do
      verb = Verb.new("ظ", "ل", "م", "8", "past", :he)
      expect(verb.conjugate).to eq("اظّلم")
    end
  end

  context '#present' do
    it 'conjugates formVIII present' do
      verb = Verb.new("ك", "ش", "ف", "8", "present", :I)
      expect(verb.conjugate).to eq("أكتشف")
    end
  end

  context '#assimilated_present' do
    it 'conjugates formVIII assimilated present' do
      verb = Verb.new("و", "ف", "ق", "8", "present", :they)
      expect(verb.conjugate).to eq("يتّفقون")
    end
  end

end