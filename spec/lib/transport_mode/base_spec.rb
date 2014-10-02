require "spec_helper"

describe TransportMode::Base do
  describe '.new' do
    context 'with 3 arguments' do
      subject(:trip) { TransportMode::Base.new('8 Paynes Road Seville', '19 Numerella Street Mooroolbark', :driving) }

      it { is_expected.to be_a(TransportMode::Base) }
    end
  end

  describe '#time_in_minutes' do
    context 'when walking from Lilydale to Mooroolbark' do
      subject(:trip) { TransportMode::Base.new('Lilydale Train Station', 'Mooroolbark Train Station', :walking) }

      it 'should be greater than 65 minutes and no more than 75 minutes' do
        expect(trip.time_in_minutes).to be_between(65, 75).inclusive
      end
    end

    context 'when driving from Lilydale to Mooroolbark' do
      subject(:trip) { TransportMode::Base.new('Lilydale Train Station', 'Mooroolbark Train Station', :driving) }

      it 'should be greater than 5 minutes and no more than 15 minutes' do
        expect(trip.time_in_minutes).to be_between(5, 15).inclusive
      end
    end

    context 'when bicycling from Lilydale to Mooroolbark' do
      subject(:trip) { TransportMode::Base.new('Lilydale Train Station', 'Mooroolbark Train Station', :bicycling) }

      it 'should be greater than 15 minutes and no more than 25 minutes' do
        expect(trip.time_in_minutes).to be_between(15, 25).inclusive
      end
    end
  end
end
