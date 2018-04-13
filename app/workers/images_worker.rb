class ImagesWorker
  include Sidekiq::Worker

  def perform
    COMPUTE.images.each do |image|
      Image.find_or_initialize_by(uid: image.id) do |rec|
        rec.name = image.name
        rec.status = image.status
        rec.save
      end
    end   
  end
end
