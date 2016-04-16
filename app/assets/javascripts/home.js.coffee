$ ->
	$(".btn").click ->
		if $("#filtro_webmotors_make_id").val() == ""
			alert "Por Favor selecione um Fabricante"
		else
			$.blockUI
				css:
					border: 'none'
					padding: '15px'
					fontSize: '20px'
					backgroundColor: '#000'
					'-webkit-border-radius': '10px'
					'-moz-border-radius': '10px'
					opacity: .5
					color: '#fff'
				message: '<h1>Buscando...</h1>'
			$("#container").load "/models?make_id=#{$("#filtro_webmotors_make_id").val()}", (content, text, object) ->
				$.unblockUI()
				if object.status != 200
					$("#container_erro").show()
					$("#container").empty()
				else
					$("#container_erro").hide()




