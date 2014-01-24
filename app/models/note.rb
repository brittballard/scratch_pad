class Note < ActiveRecord::Base
  validate :ensure_title_or_content

  private

  def method_name
    unless title.present? || content.present?
      errors.add(:title, 'Must provide a title or content')
  end
end
