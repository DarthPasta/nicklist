require 'rails_helper'

RSpec.describe Task, type: :model do
	before :each do 
		@user = User.create(username: "Nick", name: "Name", email: "hello@gmail.com", password: "123456")
	end

	it "is considered valid" do 
		expect(Task.create(description: "Hello World", completed?: false, user_id: @user.id)).to be_valid
	end

	it "should contain at least one character" do 
		expect(Task.create(description: "", completed?: false, user_id: @user.id)).to_not be_valid

		expect(Task.create(description: "a", completed?: false, user_id: @user.id)).to be_valid
	end

	it "can have a maximum of 80 characters" do 
		expect(Task.create(description: "a" * 79, completed?: false, user_id: @user.id)).to be_valid

		expect(Task.create(description: "a" * 81, completed?:false, user_id: @user.id)).to_not be_valid
	end

	it "requires a user" do 
		expect(Task.create(description: "a", completed?: false)).to_not be_valid
		expect(Task.create(description: "a", completed?: false, user_id: @user.id)).to be_valid
	end

	

end



