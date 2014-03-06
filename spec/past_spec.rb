#encoding: utf-8
require 'spec_helper'

describe '#past' do

  context FormI do
    it 'conjugates formI correctly' do
      verb = FormI.new("ك", "ت", "ب", "past", :she)
      expect(verb.conjugate).to eq("كتبت")
    end
  end

  context FormII do
    it 'conjugates formII correctly' do
      verb = FormII.new("ع", "ر", "ف", "past", :they)
      expect(verb.conjugate).to eq("عرّفوا")
    end
  end

  context FormIII do
    it 'conjugates formIII correctly' do
      verb = FormIII.new("ش", "ه", "د", "past", :you_pl)
      expect(verb.conjugate).to eq("شاهدتم")
    end
  end

  context FormIV do
    it 'conjugates formIV correctly' do
      verb = FormIV.new("ر", "س", "ل", "past", :you_pl)
      expect(verb.conjugate).to eq("أرسلتم")
    end
  end

  context FormV do
    it 'conjugates formV correctly' do
      verb = FormV.new("ع", "ر", "ف", "past", :you_f)
      expect(verb.conjugate).to eq("تعرّفت")
    end
  end

  context FormVI do
    it 'conjugates formVI correctly' do
      verb = FormVI.new("ب", "د", "ل", "past", :he)
      expect(verb.conjugate).to eq("تبادل")
    end
  end

  context FormVII do
    it 'conjugates formVII correctly' do
      verb = FormVII.new("ق", "ط", "ع", "past", :she)
      expect(verb.conjugate).to eq("انقطعت")
    end
  end

  describe FormVIII do
    it 'conjugates formVIII correctly' do
      verb = FormVIII.new("ك", "ش", "ف", "past", :I)
      expect(verb.conjugate).to eq("اكتشفت")
    end
  end

  describe FormX do
    it 'conjugates formX correctly' do
      verb = FormX.new("ك", "ش", "ف", "past", :you_pl)
      expect(verb.conjugate).to eq("استكشفتم")
    end
  end

end
