class TripsController < ApplicationController
  def index
  end

  def create
    if params[:origin].present? && params[:destination].present?
      @trips = TransportMode.all.map do |transport_mode|
        TripService.new(params[:origin], params[:destination], transport_mode)
      end
    end

    render "results", layout: false
  end
end
