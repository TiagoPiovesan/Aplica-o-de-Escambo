class Ad < ActiveRecord::Base
  belongs_to :category
  belongs_to :member

  #validates
  validates :title, :description, :category, :price, :picture, :finish_date, presence:true
  validates :price, numericality: { greater_than: 0 }


  # scopo para pegar os ultimos 6 adicionados para colocar na view da home
  scope  :descending_order, -> (quantity = 10) { order(created_at: :desc).limit(quantity) }
  scope  :to_the, -> (member) { where(member: member) }

  #PaperClip
  has_attached_file :picture, styles: { medium: "320x150#", thumb: "100x100>", large: "800x300#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  #gem money rails
  monetize :price_cents
end