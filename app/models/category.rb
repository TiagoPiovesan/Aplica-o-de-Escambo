class Category < ActiveRecord::Base

  # Associations
  has_many :ads

  validates_presence_of :description

  # scopo para os anuncios por ordem de descrição
  scope  :order_by_description, -> { order(:description) }
end
