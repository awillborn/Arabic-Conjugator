# encoding: utf-8

require 'spec_helper'

describe '#doubled_present' do

  context FormI do
    xit 'conjugates formI correctly' do
      verb = FormI.new("ر", "د", "د", "past", :she)
      expect(verb.conjugate).to eq("ردّت")
    end
  end

  context FormI do
    xit 'conjugates formI correctly' do
      verb = FormI.new("ر", "د", "د", "past", :you_m)
      expect(verb.conjugate).to eq("رددت")
    end
  end

  context FormII do
    xit 'conjugates formII correctly' do
      verb = FormII.new("ش", "د", "د", "past", :they)
      expect(verb.conjugate).to eq("شدّدوا")
    end
  end

  context FormIV do
    xit 'conjugates formIV correctly' do
      verb = FormIV.new("ض", "ر", "ر", "past", :he)
      expect(verb.conjugate).to eq("أضرّ")
    end
  end

  context FormIV do
    xit 'conjugates formV correctly' do
      verb = FormV.new("ض", "ر", "ر", "past", :I)
      expect(verb.conjugate).to eq("أضررت")
    end
  end

  describe FormX do
    xit 'conjugates formX correctly' do
      verb = FormX.new("ح", "ب", "ب", "past", :you_pl)
      expect(verb.conjugate).to eq("استحببتم")
    end
  end

end
