class Release
  include Mongoid::Document
  include Mongoid::Timestamps::Created::Short

  index({ created_at: 1 },{ background: true })
  
  belongs_to :family

end
