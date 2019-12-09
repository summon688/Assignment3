class Product < ApplicationRecord
    has_many :lineitem
    before_destroy :make_sure_no_line_items
    validates :Name, :Description, :image, presence: true
    validates :Price, numericality: {greater_than_or_equal_to: 0.01}
    validates :Name, uniqueness: true
    validates :image, allow_blank: true,
    format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'must be GIF, JPG, PNG images'}
    
    def make_sure_no_line_items
        if lineitems.empty?
            return true
        else
            errors.add(:base, 'Line Items present')
            return false
        end
    end
end
