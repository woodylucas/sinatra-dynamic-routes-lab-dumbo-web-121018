require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end


  get "/square/:number" do

    @numbers = params[:number]

     (@numbers.to_i ** 2).to_s

  end

  get "/say/:number/:phrase" do
    empty = ""
    params[:number].to_i.times do
      empty +=  params[:phrase]
    end
    empty
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do

    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

    # "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."



  end


  get '/:operation/:number1/:number2' do

    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    solution = "No valid solution"


    case params[:operation]
    when "add"
      solution = (@number1 + @number2).to_s
    when "subtract"
      solution = (@number1 - @number2).to_s
    when "multiply"
      solution = (@number1 * @number2).to_s
    when "divide"
      solution = (@number1 / @number2).to_s
    end
  end




end
