+++
born = ""        # Date Of Birth YYYY-MM-DD
date = ""        # SK Date YYYY-MM-DD
licensed = ""    # Date Licensed as YYYY-MM-DD or just year
name = ""        # Full name with middle initial
photocredit = "" # Defaults to obituary
obituary = ""    # Name of obituary source
obitLink = ""    # Link to on-line obituary page
silentkeyhq = "" # silentkeyhq UID for this SK
title = "{{ replace .TranslationBaseName "-" " " | upper | title }}"
created = "{{ .Date }}"
+++
