# encoding: utf-8

require 'spec_helper'

describe FormV do

  context "#past" do
    it 'conjugates formV past' do
      verb = FormV.new("ع", "ر", "ف", "past", :you_f)
      expect(verb.conjugate).to eq("تعرّفت")
    end
  end

  context "#defective_past" do
    it 'conjugates formV defective past' do
      verb = FormV.new("ح", "د", "ي", "past", :you_m)
      expect(verb.conjugate).to eq("تحدّيت")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formV doubled past' do
      verb = FormV.new("ض", "ر", "ر", "past", :I)
      expect(verb.conjugate).to eq("أضررت")
    end
  end


  context '#present' do
    it 'conjugates formV present' do
      verb = FormV.new("ع", "ر", "ف", "present", :you_m)
      expect(verb.conjugate).to eq("تتعرّف")
    end
  end
end