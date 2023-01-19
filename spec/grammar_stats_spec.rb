require 'grammar_stats'

describe GrammarStats do
  subject { described_class.new }

  describe '#check' do
    context 'when the text starts with a capital letter' do
      context 'when the text ends with a period, exclamation mark, or question mark' do
        it 'returns true' do
          expect(subject.check('This is a correct text.')).to be true
        end
      end

      context 'when the text does not end with a period, exclamation mark, or question mark' do
        it 'returns false' do
          expect(subject.check('This is an incorrect text')).to be false
        end
      end
    end

    context 'when the text does not start with a capital letter' do
      it 'returns false' do
        expect(subject.check('this is an incorrect text.')).to be false
      end
    end

    context 'when text passed is empty' do
      it 'returns false' do
        expect(subject.check('')).to be false
      end
    end
  end

  describe '#percentage_good' do
    context 'when no texts have been checked' do
      it 'returns 0%' do
        expect(subject.percentage_good).to eq 0
      end
    end

    context 'when some texts have been checked' do
      before do
        subject.check('This is a correct text.')
        subject.check('This is also a correct text.')
        subject.check('This is an incorrect text')
      end

      it 'returns the percentage of correct texts' do
        expect(subject.percentage_good).to eq 66.67
      end
    end
  end
end
