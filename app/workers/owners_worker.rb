class OwnersWorker
  include Sidekiq::Worker

  def perform
    IDENTITY.users.reject {|e| e.email.match("@localhost") }.each do |usr|
      Owner.find_or_initialize_by(uid: usr.id) do |owner|
        owner.email = usr.email
        owner.tenant = usr.tenant_id
        owner.name = usr.name
        owner.default_project_id = usr.attributes["default_project_id"]
        owner.save
      end    
    end
  end
end
