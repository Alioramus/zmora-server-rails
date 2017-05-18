RSpec.describe Contest, type: :model do
  it { should validate_presence_of(:start) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:signup_duration) }
  it { should validate_presence_of(:duration) }
  it { should validate_presence_of(:description) }

  it { should have_many(:problems) }
  it { should have_many(:owners) }
end
