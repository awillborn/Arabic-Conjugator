# encoding: utf-8

require 'spec_helper'

describe "Form VI" do

  context "regular past" do
    it 'conjugates formVI correctly' do
      verb = Verb.new({root1: "ب", root2: "د", root3: "ل", form: "6", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("تبادل")
    end
  end

  context "defective past" do
    it 'conjugates form VI defective past' do
      verb = Verb.new({root1: "ق", root2: "ض", root3: "ي", form: "6", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("تقاضى")
    end
  end

  context "hollow past" do
    it 'conjugates form VI hollow past' do
      verb = Verb.new({root1: "ع", root2: "و", root3: "ن", form: "6", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("تعاون")
    end
  end

  context 'regular present' do
    it 'conjugates formVI present' do
      verb = Verb.new({root1: "ب", root2: "د", root3: "ل", form: "6", tense: "present", pronoun: :he})
      expect(verb.conjugate).to eq("يتبادل")
    end
  end
end