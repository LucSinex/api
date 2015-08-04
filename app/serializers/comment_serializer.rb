class CommentSerializer < ActiveModel::Serializer
  attributes :id, :author, :body

  # belongs_to :post_id

  # url [:post, :comment]
end
