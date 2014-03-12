# encoding: utf-8

require 'spec_helper'

describe FormVII do

  context "#past" do
    it 'conjugates formVII past' do
      verb = FormVII.new("ق", "ط", "ع", "past", :she)
      expect(verb.conjugate).to eq("انقطعت")
    end
  end

  context "#defective_past" do
    it 'conjugates formVII defective past' do
      verb = FormVII.new("ق", "ض", "ي", "past", :she)
      expect(verb.conjugate).to eq("انقضت")
    end
  end

  context '#present' do
    it 'conjugates formVII present' do
      verb = FormVII.new("ق", "ط", "ع", "present", :she)
      expect(verb.conjugate).to eq("تنقطع")
    end
  end

end