require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye" do
    "Goodbye"
  end
  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  # get '/multiply' do
  #   "Multiple"
  # end
  # get '/multiply/:num1' do
  #   @num_1 = params[:num1]
  #   "Multiply #{@num_1}"
  # end

  get '/multiply/:num1/:num2' do
    @num_1 = params[:num1]
    @num_2 = params[:num2]
    @ans = (@num_1.to_i)*(@num_2.to_i)
    "#{@ans}"
  end
end
