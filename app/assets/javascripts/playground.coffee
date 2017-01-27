ready = ->
	$(document).on 'click','.main-background', (e) ->
		
		offset = $(".main-background").offset()

		myAnimation = anime(
			targets: [ '#character' ]
			left: (e.pageX - offset.left)+'px'
			top: (e.pageY - offset.top)+'px'
			rotate: 0
			duration: 4000
			loop: false
		)

	$(".audio-play")[0].play()



$(document).ready(ready)
$(document).on('page:load', ready)





