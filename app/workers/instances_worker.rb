class InstancesWorker
  include Sidekiq::Worker

  def perform
  	COMPUTE.servers.each do |server|
  		Instance.find_or_initialize_by(uid: server.id) do |instance|
  			
  		end
  	end
  end
end
