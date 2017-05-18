require 'rails_helper'

RSpec.describe TestResult, type: :model do
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:test) }
  it { should validate_presence_of(:execution_time) }
  it { should validate_presence_of(:ram_usage) }
end
