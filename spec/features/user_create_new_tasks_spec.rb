
describe "create new tasks", :type => :feature do 
	before :each do 
		user = FactoryGirl.create(:username, :email, :password)
		User.authenticate(:username, :email, :password)
	end


	it "creates a new tasks for the current user" do 
		visit root_path
			within("div.back-view") do 
			fill_in 'test1', with: "Hello there"
			click_button 'test2'
			expect(page).to have_content('Hello there')
		end
	end
end