# encoding: utf-8

require 'spec_helper'

describe FormVII do

  context "#past" do
    it 'conjugates formVII past' do
      verb = Verb.new("ق", "ط", "ع", "7", "past", :she)
      expect(verb.conjugate).to eq("انقطعت")
    end
  end

  context "#defective_past" do
    it 'conjugates formVII defective past' do
      verb = Verb.new("ق", "ض", "ي", "7", "past", :she)
      expect(verb.conjugate).to eq("انقضت")
    end
  end

  context '#present' do
    it 'conjugates formVII present' do
      verb = Verb.new("ق", "ط", "ع", "7", "present", :she)
      expect(verb.conjugate).to eq("تنقطع")
    end
  end

end