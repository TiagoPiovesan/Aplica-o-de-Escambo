class Ad < ActiveRecord::Base
  belongs_to :category
  belongs_to :member

  # scopo para pegar os ultimos 6 adicionados para colocar na view da home
  scope  :last_six, -> { order(created_at: :desc).limit(6) }

  #PaperClip
  has_attached_file :picture, styles: { medium: "320x150>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  #gem money rails
  monetize :price_cents
end