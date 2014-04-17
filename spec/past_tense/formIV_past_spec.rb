# encoding: utf-8

require 'spec_helper'

describe "Form IV Past" do

  context "regular past" do
    it 'conjugates formIV regular past' do
      verb = Verb.new({root1: "ر", root2: "س", root3: "ل", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أرسلتم")
    end

    it 'conjugates formIV regular past with hamza as first radical' do
      verb = Verb.new({root1: "ء", root2: "ل", root3: "م", form: "4", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("آلمت")
    end

    it 'conjugates formIV regular past with hamza as second radical' do
      verb = Verb.new({root1: "س", root2: "ء", root3: "م", form: "4", tense: "past", pronoun: :you_f})
      expect(verb.conjugate).to eq("أسأمت")
    end

    it 'conjugates formIV regular past with hamza as third radical' do
      verb = Verb.new({root1: "ن", root2: "ش", root3: "ء", form: "4", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("أنشأ")
    end
  end

  context "defective past" do
    it 'conjugates formIV defective past' do
      verb = Verb.new({root1: "ج", root2: "ر", root3: "ي", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أجريتم")
    end

    it 'conjugates formIV doubly weak past - defective and assimilated' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ي", form: "4", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("أوفى")
    end

    it 'conjugates formIV hollow-defective past' do
      verb = Verb.new({root1: "ح", root2: "ي", root3: "ي", form: "4", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("أحييت")
    end
  end

  context "hollow past" do
    it 'conjugates formIV hollow past, :you_pl' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "م", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أقمتم")
    end

    it 'conjugates formIV hollow past, medial waaw, :he' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "م", form: "4", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("أقام")
    end

    it 'conjugates formIV hollow past, medial waaw, :you_m' do
      verb = Verb.new({root1: "ق", root2: "و", root3: "م", form: "4", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("أقمت")
    end
  end

  context "assimilated past" do
    it 'conjugates formIV assimilated past' do
      verb = Verb.new({root1: "و", root2: "ق", root3: "ف", form: "4", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("أوقفتم")
    end
  end

  context 'doubled past' do
    it 'conjugates formIV doubled past, :he' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "4", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("أضرّ")
    end

    it 'conjugates formIV doubled past, :I' do
      verb = Verb.new({root1: "ض", root2: "ر", root3: "ر", form: "4", tense: "past", pronoun: :I})
      expect(verb.conjugate).to eq("أضررت")
    end
  end

end