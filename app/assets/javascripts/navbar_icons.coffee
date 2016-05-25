
# NAVBAR ICONS FUNCTION
#==========================================

navbar_main =->
	$('.dropdown a').bind 'click', ->
		$(this).closest('i').show()
		return
	return

$(document).ready navbar_main
