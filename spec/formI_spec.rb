# encoding: utf-8

require 'spec_helper'

describe FormI do

  context "#past" do
    it 'conjugates formI past' do
      conjugator = Conjugator.new("ك", "ت", "ب", "1", "past", :she)
      expect(conjugator.conjugate).to eq("كتبت")
    end
  end

  context "#defective_past" do
    it 'conjugates form I defective past with final root waaw' do
      conjugator = Conjugator.new("ش", "ك", "و", "1", "past", :he)
      expect(conjugator.conjugate).to eq("شكا")
    end

    it 'conjugates form I defective past with final root yaa' do
      conjugator = Conjugator.new("د", "ع", "ي", "1", "past", :he)
      expect(conjugator.conjugate).to eq("دعى")
    end
  end

  context "#hollow_past" do
    it 'conjugates formI hollow past' do
      conjugator = Conjugator.new("ق", "و", "ل", "1", "past", :he)
      expect(conjugator.conjugate).to eq("قال")
    end
  end

  context "#assimilated_past" do
    it 'conjugates formI assimilated past' do
      conjugator = Conjugator.new("و", "ص", "ف", "1", "past", :she)
      expect(conjugator.conjugate).to eq("وصفت")
    end
  end

  context "#doubled_past" do
    xit 'conjugates formI doubled past' do
      conjugator = Conjugator.new("ر", "د", "د", "1", "past", :you_m)
      expect(conjugator.conjugate).to eq("رددت")
    end
  end

  context "#present" do
    it 'conjugates formI present' do
      conjugator = Conjugator.new("ك", "ت", "ب", "1", "present", :she)
      expect(conjugator.conjugate).to eq("تكتب")
    end
  end

  context "#doubled_present" do
    xit 'conjugates formI doubled present' do
      conjugator = Conjugator.new("ر", "د", "د", "1", "present", :she)
      expect(conjugator.conjugate).to eq("ردّت")
    end
  end

  context '#assimilated_present' do
    it 'conjugates formI assimilated present' do
      conjugator = Conjugator.new("و", "ص", "ف", "1", "present", :she)
      expect(conjugator.conjugate).to eq("تصف")
    end
  end

end