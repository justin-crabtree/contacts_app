class Contact < ApplicationRecord

  def pretty_created
    created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def pretty_updated
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  def full_name
    full_name = "#{first_name} #{last_name}"
  end
end
