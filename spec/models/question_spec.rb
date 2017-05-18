require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of(:asked) }
  it { should validate_presence_of(:question) }

  it { should belong_to(:author) }
  it { should have_many(:answer) }
end
