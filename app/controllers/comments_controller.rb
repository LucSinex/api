class CommentsController < ApplicationController
	def create
		@post_id = params[:comment][:post_id]
		@post = Post.find(@post_id)
		@comment = @post.comments.create(comment_params)

		redirect_to @post
	end

	private

		def comment_params
			params.require(:comment).permit(:author, :body)
		end

		def post_id
			return params[:comment][:post_id]
		end
end
