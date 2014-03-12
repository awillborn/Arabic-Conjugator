# encoding: utf-8

require 'spec_helper'


describe FormIII do

  context "#past" do
    it 'conjugates formIII correctly' do
      verb = FormIII.new("ش", "ه", "د", "past", :you_pl)
     expect(verb.conjugate).to eq("شاهدتم")
    end
  end

  context "#defective_past" do
    it 'conjugates formIII defective past' do
      verb = FormIII.new("ن", "د", "ي", "past", :he)
      expect(verb.conjugate).to eq("نادى")
    end
  end

  context '#present' do
    it 'conjugates formIII present' do
      verb = FormIII.new("ش", "ه", "د", "present", :you_pl)
      expect(verb.conjugate).to eq("تشاهدون")
    end
  end

end