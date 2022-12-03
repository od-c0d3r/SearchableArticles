class Article < ApplicationRecord
  belongs_to :user

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
