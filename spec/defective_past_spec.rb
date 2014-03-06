require 'spec_helper'

describe "#defective_past" do

  context FormI do
    it 'conjugates form I verbs with final root waaw' do
      verb = FormI.new("ش", "ك", "و", "past", :he)
      expect(verb.conjugate).to eq("شكا")
    end
  end

  context FormI do
    it 'conjugates form I verbs with final root yaa' do
      verb = FormI.new("د", "ع", "ي", "past", :he)
      expect(verb.conjugate).to eq("دعى")
    end
  end

  context "Form II" do
    it 'conjugates formII correctly' do
      verb = FormII.new("س", "م", "ي", "past", :they)
      expect(verb.conjugate).to eq("سمّوا")
    end
  end

  context "Form III" do
    it 'conjugates formIII correctly' do
      verb = FormIII.new("ن", "د", "ي", "past", :he)
      expect(verb.conjugate).to eq("نادى")
    end
  end

  context "Form IV" do
    it 'conjugates formIV correctly' do
      verb = FormIV.new("ج", "ر", "ي", "past", :you_pl)
      expect(verb.conjugate).to eq("أجريتم")
    end
  end

  context "Form V" do
    it 'conjugates formV correctly' do
      verb = FormV.new("ح", "د", "ي", "past", :you)
      expect(verb.conjugate).to eq("تحدّيت")
    end
  end

  context "Form VI" do
    it 'conjugates formVI correctly' do
      verb = FormVI.new("ق", "ض", "ي", "past", :he)
      expect(verb.conjugate).to eq("تقاضى")
    end
  end

  context "Form VII" do
    it 'conjugates formVII correctly' do
      verb = FormVII.new("ق", "ض", "ي", "past", :she)
      expect(verb.conjugate).to eq("انقضت")
    end
  end

  context "Form VIII" do
    it 'conjugates formVIII correctly' do
      verb = FormVIII.new("ب", "ل", "ي", "past", :I)
      expect(verb.conjugate).to eq("ابتليت")
    end
  end

  context "Form X" do
    it 'conjugates formX correctly' do
      verb = FormX.new("د", "ع", "ي", "past", :we)
      expect(verb.conjugate).to eq("استدعينا")
    end
  end


end
