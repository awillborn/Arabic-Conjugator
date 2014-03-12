# encoding: utf-8

require 'spec_helper'

describe '#present' do

  context FormI do
    it 'conjugates formI correctly' do
      verb = FormI.new("ك", "ت", "ب", "present", :she)
      expect(verb.conjugate).to eq("تكتب")
    end
  end

  context FormII do
    it 'conjugates formII correctly' do
      verb = FormII.new("ع", "ر", "ف", "present", :they)
      expect(verb.conjugate).to eq("يعرّفون")
    end
  end

  context FormIII do
    it 'conjugates formIII correctly' do
      verb = FormIII.new("ش", "ه", "د", "present", :you_pl)
      expect(verb.conjugate).to eq("تشاهدون")
    end
  end

  context FormIV do
    it 'conjugates formIV correctly' do
      verb = FormIV.new("ر", "س", "ل", "present", :you_pl)
      expect(verb.conjugate).to eq("ترسلون")
    end
  end

  context FormV do
    it 'conjugates formV correctly' do
      verb = FormV.new("ع", "ر", "ف", "present", :you_m)
      expect(verb.conjugate).to eq("تتعرّف")
    end
  end

  context FormVI do
    it 'conjugates formVI correctly' do
      verb = FormVI.new("ب", "د", "ل", "present", :he)
      expect(verb.conjugate).to eq("يتبادل")
    end
  end

  context FormVII do
    it 'conjugates formVII correctly' do
      verb = FormVII.new("ق", "ط", "ع", "present", :she)
      expect(verb.conjugate).to eq("تنقطع")
    end
  end

  describe FormVIII do
    it 'conjugates formVIII correctly' do
      verb = FormVIII.new("ك", "ش", "ف", "present", :I)
      expect(verb.conjugate).to eq("أكتشف")
    end
  end

  describe FormX do
    it 'conjugates formX correctly' do
      verb = FormX.new("ك", "ش", "ف", "present", :you_pl)
      expect(verb.conjugate).to eq("تستكشفون")
    end
  end

end
