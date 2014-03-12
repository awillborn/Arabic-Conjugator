# encoding: utf-8

require 'spec_helper'

describe FormVI do

  context "#past" do
    it 'conjugates formVI correctly' do
      verb = FormVI.new("ب", "د", "ل", "past", :he)
      expect(verb.conjugate).to eq("تبادل")
    end
  end

  context "#defective_past" do
    it 'conjugates formVI defective past' do
      verb = FormVI.new("ق", "ض", "ي", "past", :he)
      expect(verb.conjugate).to eq("تقاضى")
    end
  end

  context '#present' do
    it 'conjugates formVI present' do
      verb = FormVI.new("ب", "د", "ل", "present", :he)
      expect(verb.conjugate).to eq("يتبادل")
    end
  end
end