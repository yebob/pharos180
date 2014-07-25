require "rails_helper"

RSpec.describe SpecializationsController do
  describe "GET #new" do
    it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end

    it "loads all specializations categories" do
      technician = create(:technician)
      get :new

      expect(assigns(:specialization_categories)).to match_array([
        ["Technician", technician.id]
      ])
    end

    it "loads all skills" do
      inovation_skill = create(:inovation)
      relashionship_skill = create(:relashionship)

      get :new

      expect(assigns(:skills)).to match_array([inovation_skill, relashionship_skill])
    end

    it "loads all skill categories" do
      corporate = create(:corporate)
      specific = create(:specific)
      management = create(:management)

      get :new

      expect(assigns(:skill_categories)).to match_array([
        corporate,
        specific,
        management
      ])
    end
  end
end