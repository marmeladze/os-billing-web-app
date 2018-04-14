class FlavorsWorker
  include Sidekiq::Worker

  def perform
    COMPUTE.flavors.each do |flavor|
    	Flavor.find_or_initialize_by(os_id: flavor.id.to_i) do |rec| 
    			rec.name = flavor.name, 
    			rec.ram = flavor.ram,
    			rec.disk = flavor.disk,
    			rec.vcpus = flavor.vcpus,
    			rec.is_public = flavor.is_public,
    			rec.enabled = flavor.enabled
    			rec.save
      end
    end
  end
end
