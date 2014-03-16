# encoding: utf-8

require 'spec_helper'


describe FormIII do

  context "#past" do
    it 'conjugates formIII correctly' do
      conjugator = Conjugator.new("ش", "ه", "د", "3", "past", :you_pl)
     expect(conjugator.conjugate).to eq("شاهدتم")
    end
  end

  context "#defective_past" do
    it 'conjugates formIII defective past' do
      conjugator = Conjugator.new("ن", "د", "ي", "3", "past", :he)
      expect(conjugator.conjugate).to eq("نادى")
    end
  end

  context '#present' do
    it 'conjugates formIII present' do
      conjugator = Conjugator.new("ش", "ه", "د", "3", "present", :you_pl)
      expect(conjugator.conjugate).to eq("تشاهدون")
    end
  end

end