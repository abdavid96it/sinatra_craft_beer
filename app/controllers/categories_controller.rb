class CategoriesController < ApiController
#class CategoriesController < Sinatra::Base

  get '/' do
    @categories = Category.all
    #headers "Content-Type" =>"applictaion/json"
    { data: @categories }.to_json
  end

  post '/' do
    # require 'pry'
    # binding.pry
    begin
      category = Category.new({ name: "#{ params['name'] }" })
      category.save!
      #successfully
      { data:"successfully" }.to_json
      #{}"<h1> created </h1>"
    rescue
      #'errors'
      # errors
      { data: "errors" }.to_json
    end


  end

end
