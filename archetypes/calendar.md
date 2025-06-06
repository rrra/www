+++
created = "{{ .Date }}"
date = "{{ .Date }}"
#endTime = "{{ .Date }}"
#publishDate = "{{ .Date }}"
title = "{{ with ( getenv "HUGO_TITLE" ) }}{{ . }}{{ else }}{{ replace .TranslationBaseName "-" " " | title }}{{ end }}"
location = ""
contact = ""
dates = [ "" ]
outputs = [ "HTML", "Calendar" ]
update = 0
#status = "canceled"	# Uncomment line to mark this event as canceled	
#thumbnail = "URL to file for preview image"
+++
