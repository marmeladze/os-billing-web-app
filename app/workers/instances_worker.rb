class InstancesWorker
  include Sidekiq::Worker

  def perform
  	COMPUTE.servers.each do |server|
  		Instance.find_or_initialize_by(uid: server.id) do |instance|
  			flavor = COMPUTE.flavors.find{ |f| f.id == server.flavor["id"]}
  			instance.cpu = flavor.vcpus
  			instance.ram = flavor.ram
  			instance.flavor = flavor.name
        instance.disk  = flavor.disk
        instance.image = COMPUTE.images.find{|e| e.id == server.image["id"]}.name
  			instance.zone = server.availability_zone
        instance.status = server.state
        instance.state = server.os_ext_sts_power_state
        instance.creation = server.created
        instance.name = server.name
        instance.tenant_id = server.tenant_id
        instance.owner_uid = server.owner
  		end
  	end
  end
end
