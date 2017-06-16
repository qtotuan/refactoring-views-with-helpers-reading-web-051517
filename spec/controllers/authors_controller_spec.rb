require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  describe "GET #show" do


    it "returns http success" do
      @author = Author.create(name: "Antoine")
      get :show, id: @author.id
      expect(response).to have_http_status(:success)
    end
  end

end
