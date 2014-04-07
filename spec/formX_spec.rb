# encoding: utf-8

require 'spec_helper'

describe "Form X" do
  context "regular past" do
    it 'conjugates form X regular past' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استكشفتم")
    end

    it 'conjugates form X regular past with hamza as first radical' do
      verb = Verb.new({root1: "ء", root2: "ج", root3: "ر", form: "10", tense: "past", pronoun: :you_pl})
      expect(verb.conjugate).to eq("استأجرتم")
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

  context 'regular present' do
    it 'conjugates form X regular present' do
      verb = Verb.new({root1: "ك", root2: "ش", root3: "ف", form: "10", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تستكشفون")
    end

    it 'conjugates form X regular present with hamza as first radical' do
      verb = Verb.new({root1: "ء", root2: "ج", root3: "ر", form: "10", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تستأجرون")
    end

    it 'conjugates form X regular present with hamza as third radical' do
      verb = Verb.new({root1: "ه", root2: "ز", root3: "ء", form: "10", tense: "present", pronoun: :you_m})
      expect(verb.conjugate).to eq("تستهزئ")
    end
  end

  context "assimilated present" do
    it 'conjugates form X assimilated present' do
      verb = Verb.new({root1: "و", root2: "ع", root3: "ب", form: "10", tense: "present", pronoun: :they})
      expect(verb.conjugate).to eq("يستوعبون")
    end
  end

  context 'doubled present' do
    it 'conjugates form X doubled present, :you_pl' do
      verb = Verb.new({root1: "ح", root2: "ب", root3: "ب", form: "10", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تستحبّون")
    end
  end

  context "hollow present" do
    it 'conjugates form X hollow present' do
      verb = Verb.new({root1: "ع", root2: "ي", root3: "د", form: "10", tense: "present", pronoun: :you_pl})
      expect(verb.conjugate).to eq("تستعيدون")
    end
  end

end