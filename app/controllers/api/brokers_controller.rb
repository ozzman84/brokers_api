class Api::BrokersController < ApplicationController
  def index
    brokers = Broker.all
    render json: broker_serializer(brokers)
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
