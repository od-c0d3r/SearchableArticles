class Article < ApplicationRecord
  belongs_to :user

  # include Searchable

  searchable do
    text    :title, :body
    integer :user_id
  end
end
