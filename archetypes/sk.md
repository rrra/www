+++
# Fill in these parameters for the Silent Key:
date = ""        # SK Date as YYYY-MM-DD
born = ""        # Date Of Birth as YYYY-MM-DD or just year
licensed = ""    # Date Licensed as YYYY-MM-DD or just year
name = ""        # Full name with middle initial
photocredit = "" # Defaults to obituary source
obituary = ""    # Name of obituary source
obitLink = ""    # Link to on-line obituary page
silentkeyhq = "" # silentkeyhq UID for this SK
# Do not change below here ...
title = "{{ replace .TranslationBaseName "-" " " | upper | title }}"
created = "{{ .Date }}"
+++
