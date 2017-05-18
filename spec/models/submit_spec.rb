require 'rails_helper'

RSpec.describe Submit, type: :model do
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:status) }

  it { should belong_to(:author) }
  it { should have_many(:test_result) }
  it { should have_many(:submit_file)}
end
