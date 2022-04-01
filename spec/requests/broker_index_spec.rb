require 'rails_helper'

RSpec.describe 'Broker Index' do
  let!(:broker1) { Broker.create!(name: 'John', operating_state: 'IL') }
  let!(:broker2) { Broker.create!(name: 'Steve', operating_state: 'OR') }
  let!(:broker3) { Broker.create!(name: 'Mary', operating_state: 'AZ') }

  it 'Get Broker Index' do
    get '/api/brokers'
    result = {
       brokers: [{
         id: broker1.id,
         name: broker1.name,
         operating_state: broker1.operating_state
       },
       {
         id: broker2.id,
         name: broker2.name,
         operating_state: broker2.operating_state
       },
       {
         id: broker3.id,
         name: broker3.name,
         operating_state: broker3.operating_state
       }]
     }

    expect(JSON.parse(response.body, symbolize_names: true)).to eq(result)
  end

  it 'can return preferred brokers' do
    get '/api/preferred_brokers?region=chicagoland'
    result = {
      brokers: [{
        id: broker1.id,
        name: broker1.name,
        operating_state: broker1.operating_state
      }]
    }

    expect(JSON.parse(response.body, symbolize_names: true)).to eq(result)
  end
end
