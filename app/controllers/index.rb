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

post "/money" do
  
Stripe.api_key = "sk_test_0wVyuunq8EEh5VuiRdx0yRKg"

# Get the credit card details submitted by the form
token = params[:stripeToken]

# Create a Customer
customer = Stripe::Customer.create(
  :card => token,
  :description => "payinguser@example.com"
)

# Charge the Customer instead of the card
Stripe::Charge.create(
    :amount => 1000, # in cents
    :currency => "usd",
    :customer => customer.id
)

# Save the customer ID in your database so you can use it later
save_stripe_customer_id(user, customer.id)

# Later...
customer_id = get_stripe_customer_id(user)

Stripe::Charge.create(
  :amount   => 1500, # $15.00 this time
  :currency => "usd",
  :customer => customer_id
)
end  




post "/create_league" do

   @league =League.new(params[:league])
   @league.manager_id = session[:id]
   @league.save
   redirect to "/league/#{@league.id}"
end
