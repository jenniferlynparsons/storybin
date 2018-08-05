module FeatureSpecHelpers
  include Warden::Test::Helpers

  def sign_in(user = nil)
    user ||= FactoryBot.create(:user)
    login_as user, scope: :user
    user
  end
end