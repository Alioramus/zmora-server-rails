require 'rails_helper'

RSpec.describe Answer, type: :model do
  it { should validate_presence_of(:answer) }
  it { should validate_presence_of(:answered) }

  it { should belong_to(:author) }
  it { should belong_to(:question) }
end
