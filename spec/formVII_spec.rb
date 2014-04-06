# encoding: utf-8

require 'spec_helper'

describe "Form VII" do

  context "regular past" do
    it 'conjugates formVII past' do
      verb = Verb.new({root1: "ق", root2: "ط", root3: "ع", form: "7", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("انقطعت")
    end
  end

  context "defective past" do
    it 'conjugates formVII defective past' do
      verb = Verb.new({root1: "ق", root2: "ض", root3: "ي", form: "7", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("انقضت")
    end
  end

  context "hollow past" do
    it 'conjugates formVII past, :she' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "د", form: "7", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("انقادت")
    end

    it 'conjugates formVII past, :you_pl' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "د", form: "7", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("انقدتم")
    end
  end

  context "doubled past" do
    it 'conjugates formVII doubled past, :she' do
      verb = Verb.new({root1: "ض", root2: "م", root3: "م", form: "7", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("انضمّت")
    end

    it 'conjugates formVII doubled past, :I' do
      verb = Verb.new({root1: "ض", root2: "م", root3: "م", form: "7", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("انضممت")
    end
  end

  context 'regular present' do
    it 'conjugates formVII present' do
      verb = Verb.new({root1: "ق", root2: "ط", root3: "ع", form: "7", tense: "present", pronoun: :she})
      expect(verb.conjugate).to eq("تنقطع")
    end
  end

end