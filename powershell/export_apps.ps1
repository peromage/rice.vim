﻿scoop export | Select-String '^(.+) \(.+\)' | %{"scoop install "+$_.matches.groups[1].value} > import_apps.ps1