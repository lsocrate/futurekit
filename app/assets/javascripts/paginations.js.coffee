jQuery ->
	if $('#infinite-scrolling').size() > 0
		$(window).on 'scroll', ->
			more_cards_url = $('.pagination .next_page').attr('href')
			if more_cards_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
				console.log("loading_more")
				$.getScript more_cards_url
			return
		return