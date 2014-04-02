# encoding: utf-8

require 'spec_helper'

describe FormV do

  context "#past" do
    it 'conjugates formV past' do
      verb = Verb.new("ع", "ر", "ف", "5", "past", :you_f)
      expect(verb.conjugate).to eq("تعرّفت")
    end
  end

  context "#defective_past" do
    it 'conjugates formV defective past' do
      verb = Verb.new("ح", "د", "ي", "5", "past", :you_m)
      expect(verb.conjugate).to eq("تحدّيت")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formV doubled past' do
      verb = Verb.new("ض", "ر", "ر", "5", "past", :I)
      expect(verb.conjugate).to eq("أضررت")
    end
  end


  context '#present' do
    it 'conjugates formV present' do
      verb = Verb.new("ع", "ر", "ف", "5", "present", :you_m)
      expect(verb.conjugate).to eq("تتعرّف")
    end
  end
end