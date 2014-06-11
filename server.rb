require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'omniauth'
require 'omniauth-github'
require 'shotgun'


require_relative 'config/application.rb'
#Requires everything in models folder
Dir['models/*.rb'].each { |file| require_relative file }

helpers do
  def current_user
    user_id = session[:user_id]
    @current_user ||= User.find(user_id) if user_id.present?
  end

  def signed_in?
    current_user.present?
  end
end

def set_current_user(user)
  session[:user_id] = user.id
end

def authenticate!
  unless signed_in?
    flash[:notice] = 'You need to sign in if you want to do that!'
    redirect '/'
  end
end

get '/' do
  if signed_in?
    @users_characters = User.find(session[:user_id]).characters
  end

  erb :index
end

get '/characters/:character_id' do
  @character = Character.find(params[:character_id])

  erb :character
end

get '/create' do

  erb :create
end

post '/create' do

  name = params["name"]
  metatype_id = Metatype.find_by(name: params["metatype"]).id
  body = params["body"]
  agility = params["agility"]
  reaction = params["reaction"]
  strength = params["strength"]
  charisma = params["charisma"]
  intuition = params["intuition"]
  logic = params["logic"]
  willpower = params["willpower"]
  edge = params["edge"]
  nuyen = params["nuyen"]
  essence = params["essence"]
  magic = params["magic"]
  initiative_passes = params["initiative-passes"]
  bio = params["bio"]
  user_id = session[:user_id]

  if signed_in?
    new_character = Character.create(name: name,user_id: user_id, metatype_id: metatype_id,
      body: body, agility: agility, reaction: reaction, strength: strength, charisma: charisma, intuition: intuition, logic: logic, willpower: willpower,edge: edge,
      nuyen: nuyen, essence: essence, magic: magic, initiative_passes: initiative_passes,bio: bio)


    flash[:notice] = "You have successfully created a new Character!"
  else
    authenticate!
  end

  redirect '/'
end


##############
#OAUTH routes
##############

get '/auth/github/callback' do
  auth = env['omniauth.auth']

  user = User.find_or_create_from_omniauth(auth)
  set_current_user(user)
  flash[:notice] = "You're now signed in as #{user.username}!"

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."

  redirect '/'
end

get '/example_protected_page' do
  authenticate!
end

