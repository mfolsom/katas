require 'roman_numerals_to_numbers'

describe 'roman numerals to numbers' do

  context 'single numerals' do
    it 'I becomes 1' do
      expect(roman_numeral_to_number('I')).to eq 1
    end

    it 'V becomes 5' do
      expect(roman_numeral_to_number('V')).to eq 5
    end

    it 'X becomes 10' do
      expect(roman_numeral_to_number('X')).to eq 10
    end

    it 'L becomes 50' do
      expect(roman_numeral_to_number('L')).to eq 50
    end

    it 'C becomes 100' do
      expect(roman_numeral_to_number('C')).to eq 100
    end

    it 'M becomes 1000' do
      expect(roman_numeral_to_number('M')).to eq 1000
    end
  end

  context 'appended numerals' do
    it 'III becomes 3' do
      expect(roman_numeral_to_number('III')).to eq 3
    end

    it 'XVII becomes 17' do
      expect(roman_numeral_to_number('XVII')).to eq 17
    end

    it 'LII becomes 52' do
      expect(roman_numeral_to_number('LII')).to eq 52
    end
  end

  context 'prepended numerals' do
    it 'IV becomes 4' do
      expect(roman_numeral_to_number('IV')).to eq 4
    end

    it 'XIX becomes 19' do
      expect(roman_numeral_to_number('XIX')).to eq 19
    end
  end

  describe 'complex its' do
    it 'XXXVIII becomes 38' do
      expect(roman_numeral_to_number('XXXVIII')).to eq 38
    end

    it 'XCIX becomes 99' do
      expect(roman_numeral_to_number('XCIX')).to eq 99
    end

    it 'MCMLXXXVIII becomes 1988' do
      expect(roman_numeral_to_number('MCMLXXXVIII')).to eq 1988
    end
  end

  it 'returns the expected output for the numbers 1..100' do
    fixture_path = File.dirname(__FILE__) + '/first_3k.txt'
    numerals = IO.read(fixture_path).split("\n")

    (1..3000).each do |n|
      expect(roman_numeral_to_number(numerals[n-1])).to eq n
    end
  end

end