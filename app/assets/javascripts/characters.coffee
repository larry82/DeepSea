ready = ->
	$(document).on 'click','#character', ->
		$('.character-info').toggle()
		$('.second-background').toggle()

	$(document).on 'click','.cancel', ->
		$('.character-info').toggle()
		$('.second-background').toggle()
		# $('#character').style.left = '50%' 
		$('#character').style.left = '300px'
		$('#character').style.top = '400px'

		

		



$(document).ready(ready)
$(document).on('page:load', ready)





