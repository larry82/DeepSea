
ready = ->
	main_width 	= $(".main-background").width()
	main_height = $(".main-background").height()

	randomA = Array.from({length: 20}, () => Math.floor(main_width*0.15+Math.random() * main_width*0.7))
	console.log(randomA)
	# 胖子動起來
	setInterval (->

		creature_anime = anime(
			targets: [ '.creature-box' ]

			left: (el, index) ->
				position   = $('.creature-box').eq(index).position()
				room_left  = (position.left)
				room_right = (main_width - position.left)
				
				result = randomA[anime.random(0,19)]
				console.log('position_left:'+position.left+' room_left:'+room_left+' room_right:'+room_right+' result:'+result)
				if room_left-result > 0
					$('.creature-box').eq(index).children('img.creature-img').hide()
					$('.creature-box').eq(index).children('img.creature-img-reverse').show()
				else
					$('.creature-box').eq(index).children('img.creature-img').show()
					$('.creature-box').eq(index).children('img.creature-img-reverse').hide()

				return result.toString()+'px'

			translateY: (el, index) ->
				position = $('.creature-box').eq(index).position()
				room_top = (position.top )
				room_bot = (main_height - position.top)
				
				result = anime.random(-100,100)
				
				while (result+position.top > main_height-100) 
					result = anime.random(-100,100)

				return result.toString()+'px'

			duration: (el, index) ->
				anime.random(8000,12000)
			elasticity: 0
			autoplay: true
			loop: false
		)
	), 2000
		

$(document).ready(ready)
$(document).on('page:load', ready)