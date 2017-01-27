ready = ->
	$(document).on 'click','.creature-box', (e) ->


		offset = $(".main-background").offset()
		left = (e.pageX - offset.left)+'px'
		top  = (e.pageY - offset.top)+'px'
		
		character_animate(left,top)
		# 讀資料
		creature_data  = load_data($(this))
		character_data = load_data($('#character'))
		$('#battle-message').html(character_data.atk)
		$('#battle-message').fadeIn(500)
		$('#battle-message').fadeOut(500)


	load_data = (e) ->
		hp = e.data('hp')
		atk = e.data('atk')
		def = e.data('def')
		return { 'hp':hp, 'atk':atk, 'def':def }
	
	character_animate = (left,top) ->
		anime(
			targets: [ '#character' ]
			left: left
			top: top
			rotate: 0
			duration: 4000
			loop: false
		)


$(document).ready(ready)
$(document).on('page:load', ready)