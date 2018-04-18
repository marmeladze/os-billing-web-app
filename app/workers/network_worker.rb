class NetworkWorker
  include Sidekiq::Worker

  def perform
    sync_routers!
    sync_fips!
  end
  
  def sync_routers!
    NETWORK.routers.each do |router|
      Router.find_or_initialize_by(uid: router.id) do |rec| 
        rec.name = router.name
        rec.tenant_uid = router.tenant_id
        rec.status = router.status
        rec.address = router.external_gateway_info["external_fixed_ips"][0]["ip_address"]
        rec.creation = router.attributes["created_at"]
        rec.save
      end
    end
  end

  def sync_fips!
    NETWORK.floating_ips.each do |fip|
      Fip.find_or_initialize_by(uid: fip.id) do |rec|
        rec.tenant_uid = fip.tenant_id
        rec.status  = fip.attributes["status"]
        rec.fixed_ip = fip.fixed_ip_address
        rec.floating_ip = fip.floating_ip_address
        rec.creation = fip.attributes["created_at"]
        rec.save
      end
    end
  end

end
