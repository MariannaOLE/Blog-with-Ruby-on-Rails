class Tweet < ActiveRecord::Base
    has_many :comments
    validates :content, presence: true, length: { maximum: 20}
end
