ready = ->
	$(document).on 'click','.creature-box', (e) ->


		offset = $(".main-background").offset()
		left = (e.pageX - offset.left - 50)+'px'
		top  = (e.pageY - offset.top - 50)+'px'
		
		character_animate(left,top)
		# 讀資料
		creature  = load_data($(this))
		character = load_data($('#character'))
		

		if creature.status == 'init'
			
			feedback = '你發現了'+creature.name
			$(this).data('status','battle')
			# $(this).attr("data-status",'battle')

		else if creature.status == 'battle'
			feedback = '你攻擊了'+creature.name+'造成'+character.atk+'點傷害'


		$('#battle-message').html(feedback)
		$('#battle-message').fadeIn(500)
		$('#battle-message').fadeOut(500)




	load_data = (e) ->
		name = e.data('name')
		hp = e.data('hp')
		atk = e.data('atk')
		def = e.data('def')
		status = e.data('status') 
		return { 'name':name,'hp':hp, 'atk':atk, 'def':def,'status':status }
	
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