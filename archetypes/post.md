+++
date = "{{ .Date }}"
#publishdate = "{{ .Date }}"
title = "{{ with ( getenv "HUGO_TITLE" ) }}{{ . }}{{ else }}{{ replace .TranslationBaseName "-" " " | title }}{{ end }}"
authors = [ "K0STK" ]
categories = []
tags = []
#featured = true or start date
#endFeatured = date
#siteBanner = true or start date
#bannerText = "text (or valid markdown) to over-ride self link" 
#endBanner = date (default is endFeatured date) 
#moreText = "Text To Replace Read More"
#thumbnail = "URL to file for preview image"
+++
