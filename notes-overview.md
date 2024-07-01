---
title: Dashboard de Notas
date: <% tp.date.now("YYYY-MM-DD") %>
tags: #dashboard
---

# Dashboard de Notas

## Resumo Semanal
### Fleeting Notes

```dataview
table date, tags
from "01-fleeting-notes"
where date(today) - file.date <= 7
sort file.ctime desc
```

```dataview
table date, author, tags
from "02-literature-notes"
where date(today) - file.date <= 7
sort file.ctime desc
```
## All Notes
### Fleeting
```dataview
table date, tags
from "01_Fleeting Notes"
sort file.ctime desc
```
### Literature
```dataview
table date, author, tags
from "02_Literature Notes"
sort file.ctime desc
```
### Permanent
```dataview
table date, tags
from "03_Permanent Notes"
sort file.ctime desc
```
## MOCs
```dataview
list from "MOCs"
where contains(tags, "#MOC")
sort file.name asc
```
