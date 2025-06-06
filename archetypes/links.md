+++
date = "{{ .Date }}"
title = "{{ with ( getenv "HUGO_TITLE" ) }}{{ . }}{{ else }}{{ replace .TranslationBaseName "-" " " | title }}{{ end }}"
filename = ""
linkdest = ""
contact = ""
+++
