# encoding: utf-8

require 'spec_helper'

describe FormV do

  context "#past" do
    it 'conjugates formV past' do
      conjugator = Conjugator.new("ع", "ر", "ف", "5", "past", :you_f)
      expect(conjugator.conjugate).to eq("تعرّفت")
    end
  end

  context "#defective_past" do
    it 'conjugates formV defective past' do
      conjugator = Conjugator.new("ح", "د", "ي", "5", "past", :you_m)
      expect(conjugator.conjugate).to eq("تحدّيت")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formV doubled past' do
      conjugator = Conjugator.new("ض", "ر", "ر", "5", "past", :I)
      expect(conjugator.conjugate).to eq("أضررت")
    end
  end


  context '#present' do
    it 'conjugates formV present' do
      conjugator = Conjugator.new("ع", "ر", "ف", "5", "present", :you_m)
      expect(conjugator.conjugate).to eq("تتعرّف")
    end
  end
end