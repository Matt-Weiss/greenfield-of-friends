RSpec.describe Friendship do
  it 'can create a friendship' do
    f1 = Friendship.create(initiator_github_id: 111111,recipient_github_id: 222222)

    expect(f1.initiator_github_id).to eq(111111)
  end
end
