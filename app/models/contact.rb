class Contact < ApplicationRecord

  # validates :first_name, :last_name, presence: true
  # validates :middle_name, allow_blank: true

  def pretty_created
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def pretty_updated
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def full_name
    full_name = "#{first_name} #{last_name}"
  end

  belongs_to :user
  has_many :contact_groups
  has_many :groups, through: :contact_groups
end
