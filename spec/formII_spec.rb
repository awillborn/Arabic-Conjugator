# encoding: utf-8

require 'spec_helper'

describe FormII do

  context "#past" do
    it 'conjugates formII past' do
      verb = Verb.new("ع", "ر", "ف", "2", "past", :they)
      expect(verb.conjugate).to eq("عرّفوا")
    end
  end

  context "#defective_past" do
    it 'conjugates formII defective past' do
      verb = Verb.new("س", "م", "ي", "2", "past", :they)
      expect(verb.conjugate).to eq("سمّوا")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formII doubled past' do
      verb = Verb.new("ش", "د", "د", "2", "past", :they)
      expect(verb.conjugate).to eq("شدّدوا")
    end
  end

  context '#present' do
    it 'conjugates formII present' do
      verb = Verb.new("ع", "ر", "ف", "2", "present", :they)
      expect(verb.conjugate).to eq("يعرّفون")
    end
  end

end