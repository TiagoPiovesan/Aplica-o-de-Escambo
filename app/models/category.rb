class Category < ActiveRecord::Base
    validates_presence_of :description

    # scopo para os anuncios por ordem de descrição
    scope  :order_by_description, -> { order(:description) }
end
