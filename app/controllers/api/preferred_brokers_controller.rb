class Api::PreferredBrokersController < ApplicationController
  def index
    preferred_brokers = Broker.from_region(params[:region])
    render json: broker_serializer(preferred_brokers)
  end

  private

  def broker_serializer(brokers)
    all_brokers = brokers.map do |broker|
      {
        id: broker.id,
        name: broker.name,
        operating_state: broker.operating_state
      }
    end
    {
      brokers: all_brokers
    }
  end
end
