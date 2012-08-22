class Lunchtruck < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:full_name,
                  :website,
                  :twitter_handle,
                  :facebook_page,
                  :location)

  validates(:full_name, :presence => true)
  validates(:website, :presence => true)
  validates(:location, :presence => true)
  validate(:verify_social_media)

  has_and_belongs_to_many(:users)

  def verify_social_media
    if twitter_handle.blank? and facebook_page.blank?
      errors.add(:base, "Must put in either Twitter handle or Facebook page.")
    end
  end
end
