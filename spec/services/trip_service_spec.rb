require "spec_helper"

describe TripService do
  let(:car) { TransportMode.find_by(code: "car") }

  describe "#new" do
    subject(:trip) { TripService.new("8 Paynes Road Seville", "19 Numerella Street Mooroolbark", car) }

    it { is_expected.to be_a(TripService) }
  end
end

# describe TransportMode::Base do
#   describe ".new" do
#     context "with 3 arguments" do
#       subject(:trip) { TransportMode::Base.new("8 Paynes Road Seville", "19 Numerella Street Mooroolbark", :driving) }
#
#       it { is_expected.to be_a(TransportMode::Base) }
#     end
#   end
#
#   describe "#time_in_minutes" do
#     context "when walking from Lilydale to Mooroolbark" do
#       subject(:trip) { TransportMode::Base.new("Lilydale Train Station", "Mooroolbark Train Station", :walking) }
#
#       it "should be greater than 65 minutes and no more than 75 minutes" do
#         expect(trip.time_in_minutes).to be_between(65, 75).inclusive
#       end
#     end
#
#     context "when driving from Lilydale to Mooroolbark" do
#       subject(:trip) { TransportMode::Base.new("Lilydale Train Station", "Mooroolbark Train Station", :driving) }
#
#       it "should be greater than 5 minutes and no more than 15 minutes" do
#         expect(trip.time_in_minutes).to be_between(5, 15).inclusive
#       end
#     end
#
#     context "when bicycling from Lilydale to Mooroolbark" do
#       subject(:trip) { TransportMode::Base.new("Lilydale Train Station", "Mooroolbark Train Station", :bicycling) }
#
#       it "should be greater than 15 minutes and no more than 25 minutes" do
#         expect(trip.time_in_minutes).to be_between(15, 25).inclusive
#       end
#     end
#
#     context "when using public transport from Sydney Town Hall to Central Train Station Sydney" do
#       subject(:trip) { TransportMode::Base.new("Sydney Town Hall", "Central Train Station Sydney", :transit) }
#
#       it "should be greater than 7 minutes and no more than 14 minutes" do
#         expect(trip.time_in_minutes).to be_between(7, 14).inclusive
#       end
#     end
#   end
#
#   describe "#emissions" do
#     context "when walking from Lilydale to Mooroolbark" do
#       subject(:trip) { TransportMode::Base.new("Lilydale Train Station", "Mooroolbark Train Station", :walking) }
#
#       it "should be zero" do
#         expect(trip.emissions).to eq(0)
#       end
#     end
#
#     context "when driving from Lilydale to Mooroolbark" do
#       subject(:trip) { TransportMode::Base.new("Lilydale Train Station", "Mooroolbark Train Station", :driving) }
#
#       it "should be between 1 and 2" do
#         expect(trip.emissions).to be_between(1, 2).inclusive
#       end
#     end
#
#     context "when using public transport from Sydney Town Hall to Central Train Station Sydney" do
#       subject(:trip) { TransportMode::Base.new("Sydney Town Hall", "Central Train Station Sydney", :transit) }
#
#       it "should be between 0.1 and 0.2" do
#         expect(trip.emissions).to be_between(0.1, 0.2).inclusive
#       end
#     end
#
#   end
# end
