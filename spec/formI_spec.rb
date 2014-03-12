# encoding: utf-8

require 'spec_helper'

describe FormI do

  context "#past" do
    it 'conjugates formI past' do
      verb = FormI.new("ك", "ت", "ب", "past", :she)
      expect(verb.conjugate).to eq("كتبت")
    end
  end

  context "#defective_past" do
    it 'conjugates form I defective past with final root waaw' do
      verb = FormI.new("ش", "ك", "و", "past", :he)
      expect(verb.conjugate).to eq("شكا")
    end

    it 'conjugates form I defective past with final root yaa' do
      verb = FormI.new("د", "ع", "ي", "past", :he)
      expect(verb.conjugate).to eq("دعى")
    end
  end

  context "#hollow_past" do
    it 'conjugates formI hollow past' do
      verb = FormI.new("ق", "و", "ل", "past", :he)
      expect(verb.conjugate).to eq("قال")
    end
  end

  context "#assimilated_past" do
    it 'conjugates formI assimilated past' do
      verb = FormI.new("و", "ص", "ف", "past", :she)
      expect(verb.conjugate).to eq("وصفت")
    end
  end

  context "#doubled_past" do
    xit 'conjugates formI doubled past' do
      verb = FormI.new("ر", "د", "د", "past", :you_m)
      expect(verb.conjugate).to eq("رددت")
    end
  end

  context "#present" do
    it 'conjugates formI present' do
      verb = FormI.new("ك", "ت", "ب", "present", :she)
      expect(verb.conjugate).to eq("تكتب")
    end
  end

  context "#doubled_present" do
    xit 'conjugates formI doubled present' do
      verb = FormI.new("ر", "د", "د", "past", :she)
      expect(verb.conjugate).to eq("ردّت")
    end
  end

  context '#assimilated_present' do
    it 'conjugates formI assimilated present' do
      verb = FormI.new("و", "ص", "ف", "present", :she)
      expect(verb.conjugate).to eq("تصف")
    end
  end

end