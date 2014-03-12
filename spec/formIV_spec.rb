# encoding: utf-8

require 'spec_helper'

describe FormIV do

  context "#past" do
    it 'conjugates formIV past' do
      verb = FormIV.new("ر", "س", "ل", "past", :you_pl)
      expect(verb.conjugate).to eq("أرسلتم")
    end
  end

  context "#defective_past" do
    it 'conjugates formIV defective past' do
      verb = FormIV.new("ج", "ر", "ي", "past", :you_pl)
      expect(verb.conjugate).to eq("أجريتم")
    end
  end

  context "#hollow_past" do
    it 'conjugates formIV hollow past' do
      verb = FormIV.new("ق", "و", "م", "past", :you_pl)
      expect(verb.conjugate).to eq("أقمتم")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formIV doubled past' do
      verb = FormIV.new("ض", "ر", "ر", "past", :he)
      expect(verb.conjugate).to eq("أضرّ")
    end
  end

  context '#present' do
    it 'conjugates formIV present' do
      verb = FormIV.new("ر", "س", "ل", "present", :you_pl)
      expect(verb.conjugate).to eq("ترسلون")
    end
  end
end