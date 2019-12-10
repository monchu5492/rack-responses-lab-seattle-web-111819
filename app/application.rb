class Application
 
    def call(env)
      resp = Rack::Response.new
      time = Time.new
      if time.strftime("%I").to_i < 12
        resp.write "Good morning"
      else 
        resp.write "Good afternoon"
      end
      resp.finish
    end
end


       

  