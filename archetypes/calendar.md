+++
created = "{{ .Date }}"
date = "{{ .Date }}"
#endTime = "{{ .Date }}"
#publishDate = "{{ .Date }}"
title = "{{ replace .TranslationBaseName "-" " " | title }}"
location = ""
contact = ""
dates = [ "" ]
outputs = [ "HTML", "Calendar" ]
update = 0
#status = "canceled"	# Uncomment line to mark this event as canceled	
+++
