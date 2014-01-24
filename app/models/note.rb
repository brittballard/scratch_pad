class Note < ActiveRecord::Base
  validate :ensure_title_or_content
  validate :body, presence: true
  belongs_to :body, polymorphic: true, autosave: true, inverse_of: :note, dependent: :destroy
end
