require 'date'
class Application
  def call(whatever)
    resp = Rack::Response.new

    time = Time.now
    if time.strftime('%H').to_i >= 12
      resp.write "Good Afternoon!"
    end
    if time.strftime('%H').to_i < 12
      resp.write "Good Morning!"
    end

    # num_1 = Kernel.rand(1..20)
    # num_2 = Kernel.rand(1..20)
    # num_3 = Kernel.rand(1..20)
    #
    # resp.write "#{num_1}\n"
    # resp.write "#{num_2}\n"
    # resp.write "#{num_3}\n"

    # if num_1==num_2 && num_2==num_3
    #   resp.write "You Win"
    # else
    #   resp.write "You Lose"
    # end

    resp.finish
  end
end
