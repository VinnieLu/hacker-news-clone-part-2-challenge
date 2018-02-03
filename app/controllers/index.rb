get "/" do
	@posts = Post.all
	erb :index
end

get "/post/upvote/:post_id" do
	@postvote = PostVote.find_by(post_id: params[:post_id])
	@postvote.votes += 1
	@postvote.save!
	@votes = @postvote.votes
	JSON.generate(@votes)
end

get "/post/downvote/:post_id" do
	@postvote = PostVote.find_by(post_id: params[:post_id])
	@postvote.votes -= 1
	@postvote.save!
	@votes = @postvote.votes
	JSON.generate(@votes)
end

get "/comment/upvote/:comment_id/:post_id" do
	@commentvote = CommentVote.find_by(comment_id: params[:comment_id])
	@commentvote.votes += 1
	@commentvote.save!
	@votes = @commentvote.votes
	JSON.generate(@votes)
end

get "/comment/downvote/:comment_id/:post_id" do
	@commentvote = CommentVote.find_by(comment_id: params[:comment_id])
	@commentvote.votes -= 1
	@commentvote.save!
	@votes = @commentvote.votes
	JSON.generate(@votes)
end

get "/post/:post_id" do
	@post = Post.find_by(id: params[:post_id])
	erb :post
end