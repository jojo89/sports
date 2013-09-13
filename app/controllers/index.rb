get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/league/:id' do
  @league = League.find(params[:id])
  erb :league
end  

post '/search' do
  p params[:league]
  p params[:team]
   @league = League.find_by_name(params[:league])

   @team = @league.teams.find_by_name(params[:team])
  erb :team

end  

get "/create_league" do
   erb :create_league 
end


post "/create_league" do
   @league =League.create(params[:league])
   redirect to "/league/#{@league.id}"
end
