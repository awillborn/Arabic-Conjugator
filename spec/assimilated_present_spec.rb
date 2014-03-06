#encoding: utf-8
require 'spec_helper'

describe '#assimilated_present' do

  context FormI do
    it 'conjugates formI correctly' do
      verb = FormI.new("و", "ص", "ف", "present", :she)
      expect(verb.conjugate).to eq("تصف")
    end
  end

  describe FormVIII do
    it 'conjugates formVIII correctly' do
      verb = FormVIII.new("و", "ف", "ق", "present", :they)
      expect(verb.conjugate).to eq("يتّفقون")
    end
  end

end
