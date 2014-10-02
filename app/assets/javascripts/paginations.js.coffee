jQuery ->
	if $('#infinite-scrolling').size() > 0
		$(window).on 'scroll', ->
			more_cards_url = $('.pagination .next_page').attr('href')
			if more_cards_url && $(window).scrollTop() > $(document).height() - $(window).height() - 260
				$.getScript more_cards_url
				sleep(100)
			return
		return
