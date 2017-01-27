ready = ->
	$(document).on 'click','.main-background', (e) ->
		offset = $(".main-background").offset()
		left = (e.pageX - offset.left)+'px'
		top  = (e.pageY - offset.top)+'px'
		character_animate(left,top)
		


	character_animate = (left,top) ->
		anime(
			targets: [ '#character' ]
			left: left
			top: top
			rotate: 0
			duration: 4000
			loop: false
		)



	$(".audio-play")[0].play()



$(document).ready(ready)
$(document).on('page:load', ready)





