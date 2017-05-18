require 'rails_helper'

RSpec.describe ProblemExample, type: :model do
  it { should validate_presence_of(:explanation) }
  it { should validate_presence_of(:input) }
  it { should validate_presence_of(:result) }
  it { should validate_presence_of(:number) }

  it { should belong_to(:problem) }
end
