

# RSpec.describe "UserPages", :type => :request do
#   describe "GET /user_pages" do
#     it "works! (now write some real specs)" do
#       get user_pages_index_path
#       expect(response.status).to be(200)
#     end
#   end
# end


require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path}

    it { should have_content('Sign up') }
    it { shave have_title(full_title('Sign up')) }
  end

end

