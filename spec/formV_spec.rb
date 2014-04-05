# encoding: utf-8

require 'spec_helper'

describe "Form V" do

  context "#past" do
    it 'conjugates formV past' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "5", tense: "past", pronoun: :you_f})
      expect(verb.conjugate).to eq("تعرّفت")
    end
  end

  context "#defective_past" do
    it 'conjugates formV defective past' do
      verb = Verb.new({root1: "ح", root2: "د", root3: "ي", form: "5", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("تحدّيت")
    end
  end

  context '#doubled_past' do
    xit 'conjugates formV doubled past' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "5", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("أضررت")
    end
  end


  context '#present' do
    it 'conjugates formV present' do
      verb = Verb.new({root1: "ع", root2: "ر", root3: "ف", form: "5", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تتعرّف")
    end
  end
end