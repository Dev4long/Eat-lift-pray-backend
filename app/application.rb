class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    
    if req.path.match(/test/)
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json]]

    elsif req.path.match(/trainers/) && req.get?

      trainers_json = Trainer.all.to_json(:include => { :sessions => {
        :include => { :client => {
                      :only => [:name, :age] } }
      }
     })

      return [200, { 'Content-Type' => 'application/json' }, [trainers_json]]
      

    elsif req.path.match(/trainers/) && req.post?
      session_hash = JSON.parse(req.body.read)
      new_session = Session.create(session_hash)

      return [201, { 'Content-Type' => 'application/json' }, [ new_session.display_data ]]

    else
      [404, {}, ["path not found!!!"]]
    end
  end
end

#   private

#   def send_hello
#     return [200, { "Content-Type" => "application/json" }, [{ :message => "hello world!" }.to_json]]
#   end

#   def send_not_found
#     return [404, {}, ["Path not found!!!"]]
#   end
# end
