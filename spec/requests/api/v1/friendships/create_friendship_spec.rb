RSpec.describe 'Friendship API' do
  describe 'receives post request to /friendships' do
    it 'creates a friendship' do
      post "/api/v1/friendships", initiator: 111111, recipient: 222222

      expect(last_response).to be_ok
      expect(Friendship.last.initiator_github_id).to eq(111111)
      expect(Friendship.last.recipient_github_id).to eq(222222)
    end
  end

  describe 'receives get request to /friendships/:id' do
    it 'returns a collection of friendships' do
      f_1 = Friendship.create!(initiator_github_id: 111111,recipient_github_id: 222222)
      f_2 = Friendship.create!(initiator_github_id: 111111,recipient_github_id: 333333)
      f_3 = Friendship.create!(initiator_github_id: 222222,recipient_github_id: 333333)

      get "/api/v1/friendships/111111"

      expect(last_response).to be_ok

      data = JSON.parse(last_response.body)['data']
      expect(data.count).to eq(2)
      expect(data[0]['attributes']['initiator']).to eq(111111)
      expect(data[0]['attributes']['recipient']).to eq(222222)
    end
  end
end
