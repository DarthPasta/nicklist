require 'rails_helper'

RSpec.describe Task, type: :model do
	it "is considered valid" do 
		expect(Task.create(description: "Hello World", completed?: false)).to be_valid
	end

	it "should not be empty" do 
		expect(Task.create(description: "", completed?: false)).to_not be_valid
	end

	

end



