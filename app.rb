require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    (num * num).to_s
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    phrase = params[:phrase] * n

    # answer = ""
    # n.times do 
    #   answer << "#{phrase}"
    # end
    # answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    answer = []
    params.each do |k,v|
      answer << v
    end
    answer.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      (num1 + num2).to_s
    when "subtract"
      (num1 - num2).to_s
    when "multiply"
      (num1 * num2).to_s
    when "divide"
      (num1 / num2).to_s
    end
    end

end
