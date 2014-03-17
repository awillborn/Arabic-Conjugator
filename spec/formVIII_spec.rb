# encoding: utf-8

require 'spec_helper'

describe FormVIII do

  context "#past" do
    it 'conjugates formVIII past' do
      conjugator = Conjugator.new("ك", "ش", "ف", "8", "past", :I)
      expect(conjugator.conjugate).to eq("اكتشفت")
    end
  end

  context "#defective_past" do
    it 'conjugates formVIII defective past' do
      conjugator = Conjugator.new("ب", "ل", "ي", "8", "past", :I)
      expect(conjugator.conjugate).to eq("ابتليت")
    end
  end

  context "#hollow_past" do
    it 'conjugates formVIII hollow past' do
      conjugator = Conjugator.new("خ", "و", "ر", "8", "past", :I)
      expect(conjugator.conjugate).to eq("اخترت")
    end
  end

  context "#assimilated_past" do
    it 'conjugates formVIII assimilated past with root1 waaw' do
      conjugator = Conjugator.new("و", "ف", "ق", "8", "past", :they)
      expect(conjugator.conjugate).to eq("اتّفقوا")
    end

    it 'conjugates formVIII assimilated past with root1 taa' do
      conjugator = Conjugator.new("ت", "ب", "ع", "8", "past", :he)
      expect(conjugator.conjugate).to eq("اتّبع")
    end
  end

  context '#present' do
    it 'conjugates formVIII present' do
      conjugator = Conjugator.new("ك", "ش", "ف", "8", "present", :I)
      expect(conjugator.conjugate).to eq("أكتشف")
    end
  end

  context '#assimilated_present' do
    it 'conjugates formVIII assimilated present' do
      conjugator = Conjugator.new("و", "ف", "ق", "8", "present", :they)
      expect(conjugator.conjugate).to eq("يتّفقون")
    end
  end

end