require_relative 'change_machine.rb'

describe ChangeMachine do
  describe '.calculate_change' do
    subject { described_class.calculate_change(input_value) }

    context 'when input is 653' do
      let(:input_value) { 653 }
      let(:expected_result) { { 200 => 3, 100 => 0, 25 => 2, 10 => 0, 5 => 0, 1 => 3 } }

      it { is_expected.to eq(expected_result) }
    end

    context 'when input is 53' do
      let(:input_value) { 53 }
      let(:expected_result) { { 200 => 0, 100 => 0, 25 => 2, 10 => 0, 5 => 0, 1 => 3 } }

      it { is_expected.to eq(expected_result) }
    end

    context 'when input is 132' do
      let(:input_value) { 132 }
      let(:expected_result) { { 200 => 0, 100 => 1, 25 => 1, 10 => 0, 5 => 1, 1 => 2 } }

      it { is_expected.to eq(expected_result) }
    end
  end
end
