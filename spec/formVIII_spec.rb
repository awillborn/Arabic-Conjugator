# encoding: utf-8

require 'spec_helper'

describe FormVIII do

  context "#past" do
    it 'conjugates formVIII past' do
      verb = FormVIII.new("ك", "ش", "ف", "past", :I)
      expect(verb.conjugate).to eq("اكتشفت")
    end
  end

  context "#defective_past" do
    it 'conjugates formVIII defective past' do
      verb = FormVIII.new("ب", "ل", "ي", "past", :I)
      expect(verb.conjugate).to eq("ابتليت")
    end
  end

  context "#hollow_past" do
    it 'conjugates formVIII hollow past' do
      verb = FormVIII.new("خ", "و", "ر", "past", :I)
      expect(verb.conjugate).to eq("اخترت")
    end
  end

  context "#assimilated_past" do
    it 'conjugates formVIII assimilated past' do
      verb = FormVIII.new("و", "ف", "ق", "past", :they)
      expect(verb.conjugate).to eq("اتّفقوا")
    end
  end

  context '#present' do
    it 'conjugates formVIII present' do
      verb = FormVIII.new("ك", "ش", "ف", "present", :I)
      expect(verb.conjugate).to eq("أكتشف")
    end
  end

  context '#assimilated_present' do
    it 'conjugates formVIII assimilated present' do
      verb = FormVIII.new("و", "ف", "ق", "present", :they)
      expect(verb.conjugate).to eq("يتّفقون")
    end
  end

end