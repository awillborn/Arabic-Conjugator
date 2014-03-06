require 'spec_helper'

describe '#assimilated_past' do

  context FormI do
    it 'conjugates formI correctly' do
      verb = FormI.new("و", "ص", "ف", "past", :she)
      expect(verb.conjugate).to eq("وصفت")
    end
  end

  describe FormVIII do
    it 'conjugates formVIII correctly' do
      verb = FormVIII.new("و", "ف", "ق", "past", :they)
      expect(verb.conjugate).to eq("اتّفقوا")
    end
  end

end
