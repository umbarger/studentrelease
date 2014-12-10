class Release
  include Mongoid::Document
  include Mongoid::Timestamps::Created::Short

  index({ created_at: 1 },{ background: true })
  
  embedded_in :family
  belongs_to :educator

end