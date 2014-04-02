# encoding: utf-8

require 'spec_helper'


describe FormIII do

  context "#past" do
    it 'conjugates formIII correctly' do
      verb = Verb.new("ش", "ه", "د", "3", "past", :you_pl)
     expect(verb.conjugate).to eq("شاهدتم")
    end
  end

  context "#defective_past" do
    it 'conjugates formIII defective past' do
      verb = Verb.new("ن", "د", "ي", "3", "past", :he)
      expect(verb.conjugate).to eq("نادى")
    end
  end

  context '#present' do
    it 'conjugates formIII present' do
      verb = Verb.new("ش", "ه", "د", "3", "present", :you_pl)
      expect(verb.conjugate).to eq("تشاهدون")
    end
  end

end