require 'spec_helper'

describe 'Home page route' do
  before(:each) do
    HighVoltage.home_page = 'home'
    Rails.application.reload_routes!
  end

  it 'redirects the duplicate content to root' do
    get '/home'
    expect(response).to redirect_to('/')
  end
end
