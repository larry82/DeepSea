
ready = ->
	
	main_width 	= $(".main-background").width()
	main_height = $(".main-background").height()

	setInterval (->

		creature_anime = anime(
			targets: [ '.creature-box' ]

			left: (el, index) ->
				anime.random(100,400)+'px'
			top: (el, index) ->
				anime.random(200,500)+'px'
			# translateX: (el, index) ->
			# 	room_right = (main_width - index - 50)
			# 	room_left  = -(main_width - room_right)
			# 	result = anime.random(room_left,room_right)+'px'
			# 	return result.toString()
			# translateY: (el, index) ->
			# 	room_bot = (main_height - index - 50)
			# 	room_top = -(main_height - room_bot)
			# 	result = anime.random(room_top, room_bot)+'px'
			# 	return result.toString()
			
			# left: (el, index) ->
			# 	anime.random(0,main_width)+'px'
			# top: (el, index) ->
			# 	anime.random(0,main_height)+'px' 
			duration: (el, index) ->
				anime.random(8000,12000)
			elasticity: 200
			autoplay: true
			loop: false
		)
	), 2000
		

$(document).ready(ready)
$(document).on('page:load', ready)