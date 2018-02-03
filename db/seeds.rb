20.times do 
	user = User.create(name: Faker::DragonBall.character, email: Faker::Internet.email)
	post = Post.create(title: Faker::ChuckNorris.fact, body: Faker::Hobbit.quote, user_id: user.id)
	comment = Comment.create(body: Faker::HitchhikersGuideToTheGalaxy.marvin_quote, user_id: user.id, post_id: post.id)
	postvote = PostVote.create(votes: rand(100), post_id: post.id)
	commentvote = CommentVote.create(votes: rand(100), comment_id: comment.id)
end