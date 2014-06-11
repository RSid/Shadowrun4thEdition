configure :development do
  require 'dotenv'
  Dotenv.load


  require 'pry'

end

configure do
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET']

  use OmniAuth::Builder do
    provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'],
      scope: 'user:email'
  end
end
