# encoding: utf-8

require 'spec_helper'

describe FormII do

  context "#past" do
    it 'conjugates formII past' do
      verb = FormII.new("ع", "ر", "ف", "past", :they)
      expect(verb.conjugate).to eq("عرّفوا")
    end
  end

  context "#defective_past" do
    it 'conjugates formII defective past' do
      verb = FormII.new("س", "م", "ي", "past", :they)
      expect(verb.conjugate).to eq("سمّوا")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formII doubled past' do
      verb = FormII.new("ش", "د", "د", "past", :they)
      expect(verb.conjugate).to eq("شدّدوا")
    end
  end

  context '#present' do
    it 'conjugates formII present' do
      verb = FormII.new("ع", "ر", "ف", "present", :they)
      expect(verb.conjugate).to eq("يعرّفون")
    end
  end

end