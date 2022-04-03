require 'rails_helper'

RSpec.describe API::V1::Sip, type: :request do
  include API::V1::Helpers::Sip

  before :each do
    @base_url = '/api/v1/sip'
  end

  describe 'GET /api/v1/sip/fetch-all-sip' do
    it 'should return ok' do
      get @base_url + '/fetch-all-sip'
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /api/v1/sip/create-sip' do
    context 'when valid params' do
      it 'should return created' do
        params = {
          monthly_investment: 500,
          time_period: 10,
          expected_return_rate: 10
        }
        post @base_url + '/create-sip', params: params
        expect(response).to(have_http_status(:created))
        expect(JSON.parse(response.body).count).to eq(6)
        expect(JSON.parse(response.body)['invested_amount']).to eq(60_000)
        expect(JSON.parse(response.body)['estimated_returns']).to eq(43_276)
        expect(JSON.parse(response.body)['total_value']).to eq(103_276)
      end
    end
    context 'when params are missing' do
      it 'should return created' do
        params = {
          time_period: 10,
          expected_return_rate: 10
        }
        post @base_url + '/create-sip', params: params
        expect(response).to(have_http_status(:bad_request))
      end
    end
  end
end
