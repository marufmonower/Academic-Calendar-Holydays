require 'rails_helper'

RSpec.describe Holiday, type: :model do
  	before :each do
		@holiday = Holiday.new
	end

	it "is valid with valid attributes" do
		@holiday.reason = "anything"
		@holiday.starting_date  = "anything"
		@holiday.ending_date      = "anything"
		expect(@holiday).to be_valid
	end

	it "is not valid without a reason" do
		@holiday.reason = nil
		expect(@holiday).to_not be_valid
	end
	it "is not valid without a starting_date" do
		@holiday.starting_date = nil
		expect(@holiday).to_not be_valid
	end
	it "is not valid without a ending_date" do
		@holiday.ending_date = nil
		expect(@holiday).to_not be_valid
	end
end
