# encoding: utf-8

require 'spec_helper'

describe FormIV do

  context "#past" do
    it 'conjugates formIV past' do
      conjugator = Conjugator.new("ر", "س", "ل", "4", "past", :you_pl)
      expect(conjugator.conjugate).to eq("أرسلتم")
    end
  end

  context "#defective_past" do
    it 'conjugates formIV defective past' do
      conjugator = Conjugator.new("ج", "ر", "ي", "4", "past", :you_pl)
      expect(conjugator.conjugate).to eq("أجريتم")
    end
  end

  context "#hollow_past" do
    it 'conjugates formIV hollow past' do
      conjugator = Conjugator.new("ق", "و", "م", "4", "past", :you_pl)
      expect(conjugator.conjugate).to eq("أقمتم")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formIV doubled past' do
      conjugator = Conjugator.new("ض", "ر", "ر", "4", "past", :he)
      expect(conjugator.conjugate).to eq("أضرّ")
    end
  end

  context '#present' do
    it 'conjugates formIV present' do
      conjugator = Conjugator.new("ر", "س", "ل", "4", "present", :you_pl)
      expect(conjugator.conjugate).to eq("ترسلون")
    end
  end
end