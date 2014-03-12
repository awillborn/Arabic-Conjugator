# encoding: utf-8

require 'spec_helper'

describe "#hollow_past" do

  context FormIV do
    it 'conjugates formIV correctly' do
      verb = FormIV.new("ق", "و", "م", "past", :you_pl)
      expect(verb.conjugate).to eq("أقمتم")
    end
  end

  context FormVIII do
    it 'conjugates formVIII correctly' do
      verb = FormVIII.new("خ", "و", "ر", "past", :I)
      expect(verb.conjugate).to eq("اخترت")
    end
  end

  describe "Form X" do
    it 'conjugates formX correctly' do
      verb = FormX.new("ع", "ي", "د", "past", :you_pl)
      expect(verb.conjugate).to eq("استعدتم")
    end
  end


end
