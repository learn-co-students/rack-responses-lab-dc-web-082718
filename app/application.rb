require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now
    # binding.pry
    if current_time.hour < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end
    resp.finish
  end

  # End of App class definition
end
