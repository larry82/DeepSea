ready = ->
	# 打架
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
			atk_result = atk_creature(character,creature)
			feedback = ''
			creature_message = (-atk_result.atk_demage)

		$('#battle-message').html(feedback)
		$('#battle-message').fadeIn(500)
		$('#battle-message').fadeOut(500)

		$('.battle-message-creature').html(creature_message)
		$('.battle-message-creature').fadeIn(500)
		$('.battle-message-creature').fadeOut(500)
	load_data = (e) ->
		name = e.data('name')
		hp = e.data('hp')
		atk = e.data('atk')
		def = e.data('def')
		status = e.data('status') 
		return { 'name':name,'hp':hp, 'atk':atk, 'def':def,'status':status }

	atk_creature = (character,creature) ->
		atk_demage        = character.atk - creature.def
		creature_hp_left  = creature.hp - atk_demage
		character_injured = creature.atk - character.def
		if character_injured < 0
			character_injured = 0

		if creature_hp_left > 0
			battle_status = 'during'
		else
			battle_status = 'done'
		return {
				'atk_demage':atk_demage,
				'creature_hp_left':creature_hp_left,
				'character_injured':character_injured,
				'battle_status':battle_status
				}

	
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