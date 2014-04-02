# encoding: utf-8

require 'spec_helper'

describe FormVI do

  context "#past" do
    it 'conjugates formVI correctly' do
      verb = Verb.new("ب", "د", "ل", "6", "past", :he)
      expect(verb.conjugate).to eq("تبادل")
    end
  end

  context "#defective_past" do
    it 'conjugates formVI defective past' do
      verb = Verb.new("ق", "ض", "ي", "6", "past", :he)
      expect(verb.conjugate).to eq("تقاضى")
    end
  end

  context '#present' do
    it 'conjugates formVI present' do
      verb = Verb.new("ب", "د", "ل", "6", "present", :he)
      expect(verb.conjugate).to eq("يتبادل")
    end
  end
end