# encoding: utf-8

require 'spec_helper'

describe FormX do
  context "#past" do
    it 'conjugates formX past' do
      conjugator = Conjugator.new("ك", "ش", "ف", "10", "past", :you_pl)
      expect(conjugator.conjugate).to eq("استكشفتم")
    end
  end

  context "#defective_past" do
    it 'conjugates formX defective past' do
      conjugator = Conjugator.new("د", "ع", "ي", "10", "past", :we)
      expect(conjugator.conjugate).to eq("استدعينا")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formX doubled past' do
      conjugator = Conjugator.new("ح", "ب", "ب", "10", "past", :you_pl)
      expect(conjugator.conjugate).to eq("استحببتم")
    end
  end

  context "#hollow_past" do
    it 'conjugates formX hollow past' do
      conjugator = Conjugator.new("ع", "ي", "د", "10", "past", :you_pl)
      expect(conjugator.conjugate).to eq("استعدتم")
    end
  end


 context '#present' do
    it 'conjugates formX present' do
      conjugator = Conjugator.new("ك", "ش", "ف", "10", "present", :you_pl)
      expect(conjugator.conjugate).to eq("تستكشفون")
    end
  end
end