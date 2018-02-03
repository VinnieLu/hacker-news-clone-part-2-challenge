$(document).ready(function() {
	$("body").on("click", "a.upvote", function(event) {
		event.preventDefault()
		button = $(this)
		$.ajax({
			url: button.attr("href"),
			type: "GET",
		})
		.done(function(response) {
			votes = JSON.parse(response)
			button.closest(".vote-container").find("span.votes").text(votes)
		})
	})


	$("a.downvote").on("click", function(event) {
		event.preventDefault()
		button = $(this)
		$.ajax({
			url: button.attr("href"),
			type: "GET"
		})
		.done(function(response) {
			votes = JSON.parse(response)
			button.closest(".vote-container").find("span.votes").text(votes)
		})
	})

	$("a.comment-upvote").on("click", function(event) {
		event.preventDefault()
		button = $(this)
		$.ajax({
			url: button.attr("href"),
			type: "GET"
		})
		.done(function(response) {
			votes = JSON.parse(response)
			button.closest(".comment-votes-container").find(".comment-score").text(votes)
		})
	})

	$("a.comment-downvote").on("click", function(event) {
		event.preventDefault()
		button = $(this)
		$.ajax({
			url: button.attr("href"),
			type: "GET"
		})
		.done(function(response) {
			votes = JSON.parse(response)
			button.closest(".comment-votes-container").find(".comment-score").text(votes)
		})
	})
})






