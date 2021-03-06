# encoding: utf-8

require 'spec_helper'

describe "Form X Past" do

  context "regular past" do
    it 'conjugates form X regular past' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استكشفتم")
    end

    it 'conjugates form X regular past with hamza as first radical' do
      verb = Verb.new({root1: "ء", root2: "ج", root3: "ر", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استأجرتم")
    end

    it 'conjugates form X regular past with hamza as second radical' do
      verb = Verb.new({root1: "ر", root2: "ء", root3: "ف", form: "10", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("استرأفت")
    end

    it 'conjugates form X regular past with hamza as third radical' do
      verb = Verb.new({root1: "ه", root2: "ز", root3: "ء", form: "10", tense: "past", pronoun: :you_m})
      expect(verb.conjugate).to eq("استهزأت")
    end
  end

  context "defective past" do
    it 'conjugates form X defective past' do
      verb = Verb.new({root1: "د", root2: "ع", root3: "ي", form: "10", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("استدعينا")
    end

    it 'conjugates form X defective-assimilated past' do
      verb = Verb.new({root1: "و", root2: "ف", root3: "ي", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استوفيتم")
    end

    it 'conjugates form X defective-hollow past, :you_pl' do
      verb = Verb.new({root1: "ح", root2: "ي", root3: "ي", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استحييتم")
    end

    it 'conjugates form X defective-hollow past, :he' do
      verb = Verb.new({root1: "ح", root2: "ي", root3: "ي", form: "10", tense: "past", pronoun: :he})
      expect(verb.conjugate).to eq("استحيا")
    end

  end

  context 'doubled past' do
    it 'conjugates form X doubled past, :you_pl' do
      verb = Verb.new({root1: "ح", root2: "ب", root3: "ب", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استحببتم")
    end

    it 'conjugates form X doubled past, :she' do
      verb = Verb.new({root1: "ح", root2: "ب", root3: "ب", form: "10", tense: "past", pronoun: :she})
      expect(verb.conjugate).to eq("استحبّت")
    end
  end

  context "hollow past" do
    it 'conjugates form X hollow past' do
      verb = Verb.new({root1: "ع", root2: "ي", root3: "د", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استعدتم")
    end
  end

  context "assimilated past" do
    it 'conjugates form X assimilated past' do
      verb = Verb.new({root1: "و", root2: "ع", root3: "ب", form: "10", tense: "past", pronoun: :we})
      expect(verb.conjugate).to eq("استوعبنا")
    end
  end

end