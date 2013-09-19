get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/league/:id' do
  @league = League.find(params[:id])
  erb :league
end  

get "/create_league" do
   erb :create_league 
end

get "/account/:id" do
  @manager=Manager.find(params[:id])

  erb :manager
  
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

post '/login' do
  @manager= Manager.find_by_email(params[:manager][:email])
  if @manager
    p @manager
    @real = Manager.authenticate(params[:manager][:email],params[:manager][:password])
    if @real
      p @real.id
      session[:id] = @real.id  
        redirect "/account/#{session[:id]}"
    else
        redirect "/"
    end    
  else
    redirect "/"
  end
end  




post "/create_league" do
   @league =League.create(params[:league])
   redirect to "/league/#{@league.id}"
end
