require 'rails_helper'

RSpec.describe API::V1::Lumpsum, type: :request do
  include API::V1::Helpers::Lumpsum

  before :each do
    @base_url = '/api/v1/lumpsum'
  end

  describe 'GET /api/v1/lumpsum/fetch-all-lumpsum' do
    it 'should return ok' do
      get @base_url + '/fetch-all-lumpsum'
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /api/v1/lumpsum/create-lumpsum' do
    context 'when valid params' do
      it 'should return created' do
        params = {
          total_investment: 500,
          time_period: 10,
          expected_return_rate: 10
        }
        post @base_url + '/create-lumpsum', params: params
        expect(response).to(have_http_status(:created))
        expect(JSON.parse(response.body).count).to eq(6)
        expect(JSON.parse(response.body)['invested_amount']).to eq(500)
        expect(JSON.parse(response.body)['estimated_returns']).to eq(796)
        expect(JSON.parse(response.body)['total_value']).to eq(1296)
      end
    end
    context 'when params are missing' do
      it 'should return created' do
        params = {
          time_period: 10,
          expected_return_rate: 10
        }
        post @base_url + '/create-lumpsum', params: params
        expect(response).to(have_http_status(:bad_request))
      end
    end
  end
end
