class VolumesWorker
  include Sidekiq::Worker

  def perform
    COMPUTE.volumes.all.each do |vol|
      Volume.find_or_initialize_by(uid: vol.id) do |v|
        v.volume_type = vol.type
        v.amount = vol.size
        v.available = vol.attachments[0].size == 0 ? true : false
        v.creation = vol.created_at
        v.instance_uid = vol.attachments[0]['serverId'] || ""
        v.owner_uid = COMPUTE.servers.find{|s| s.id == vol.attachments[0]["serverId"]}.try(:user_id)
        v.save
      end
    end 
  end
end
