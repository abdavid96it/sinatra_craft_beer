class ApiController < Sinatra::Base
  before do
    #headers "Content-Type" =>"applictaion/json"
    response_header
  end


  private
    def response_header
      headers "Content-Type" =>"applictaion/json"
    end

end
