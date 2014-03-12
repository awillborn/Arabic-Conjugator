# encoding: utf-8

require 'spec_helper'

describe FormX do
  context "#past" do
    it 'conjugates formX past' do
      verb = FormX.new("ك", "ش", "ف", "past", :you_pl)
      expect(verb.conjugate).to eq("استكشفتم")
    end
  end

  context "#defective_past" do
    it 'conjugates formX defective past' do
      verb = FormX.new("د", "ع", "ي", "past", :we)
      expect(verb.conjugate).to eq("استدعينا")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formX doubled past' do
      verb = FormX.new("ح", "ب", "ب", "past", :you_pl)
      expect(verb.conjugate).to eq("استحببتم")
    end
  end

 context '#present' do
    it 'conjugates formX present' do
      verb = FormX.new("ك", "ش", "ف", "present", :you_pl)
      expect(verb.conjugate).to eq("تستكشفون")
    end
  end
end