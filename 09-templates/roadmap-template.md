---
title: <% tp.file.title %>
date: <% tp.date.now("YYYY-MM-DD") %>
tags: #roadmap #planning #goals
---

# <% tp.file.title %>

- **Data**: <% tp.date.now("dddd, MMMM Do YYYY") %>

---

## Visão Geral

- **Objetivo Principal**: 

## Etapas do Roadmap

1. **Etapa 1**: 
   - **Descrição**: 
   - **Data de Início**: <% tp.date.now("YYYY-MM-DD") %>
   - **Data de Término Estimada**: 
   - **Status**: 
   - **Notas**: 

2. **Etapa 2**: 
   - **Descrição**: 
   - **Data de Início**: 
   - **Data de Término Estimada**: 
   - **Status**: 
   - **Notas**: 

## Metas e Marcos

- **Meta 1**:
  - **Descrição**: 
  - **Data Alvo**: 
  - **Status**: 

- **Meta 2**:
  - **Descrição**: 
  - **Data Alvo**: 
  - **Status**: 

## Notas Relacionadas

- [[Nota 1]]
- [[Nota 2]]

## Consultas de Data

```dataview
table date, status
from "path/to/roadmaps"
where contains(tags, "#roadmap")
sort date asc
```
