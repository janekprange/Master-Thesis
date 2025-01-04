---
category: literaturenote
tags: [{% if allTags %}{% for t in tags %}{{t.tag | replace(" - ", "/") | replace(" ", "_")}}{% if not loop.last %}, {% endif %}{% endfor %}{% endif %}]
citekey: {{citekey}}
---
{% macro calloutHeader(type, color) -%}  
{%- if type == "highlight" -%}  
<mark style="background-color: {{color}}">Quote</mark>  
{%- endif -%}

{%- if type == "note" -%}  
<mark style="background-color: {{color}}">Note</mark>  
{%- endif -%}  
{%- endmacro -%}

# {{title}}

> [!info]-
{% for type, creators in creators | groupby("creatorType") -%}
{%- for creator in creators -%}
> **{{"First" if loop.first}}{{type | capitalize}}**::
{%- if creator.name %} {{creator.name}}  
{%- else %} {{creator.lastName}}, {{creator.firstName}}  
{%- endif %}  
{% endfor -%}
> --- 
{%- endfor %}    
> **Title**:: {{title}}  
> **Year**:: {{date | format("YYYY")}}   
> **Citekey**:: {{citekey}} {%- if itemType %}  
> **Type**:: {{itemType}}{%- endif %}{%- if itemType == "journalArticle" %}  
> **Journal**:: *{{publicationTitle}}* {%- endif %}{%- if volume %}  
> **Volume**:: {{volume}} {%- endif %}{%- if issue %}  
> **Issue**:: {{issue}} {%- endif %}{%- if itemType == "bookSection" %}  
> **Book**:: {{publicationTitle}} {%- endif %}{%- if publisher %}  
> **Publisher**:: {{publisher}} {%- endif %}{%- if place %}  
> **Location**:: {{place}} {%- endif %}{%- if pages %}   
> **Pages**:: {{pages}} {%- endif %}{%- if DOI %}  
> **DOI**:: {{DOI}} {%- endif %}{%- if ISBN %}  
> **ISBN**:: {{ISBN}} {%- endif %}{%- if abstractNote %}
> ---
> {{abstractNote}}
{%- endif %}

## Notes
{% persist "notes" %}

{% endpersist %}

## Annotations
{% for annot in annotations -%}
{{calloutHeader(annot.type, annot.color)}}
{%- if annot.annotatedText %}
> {{annot.annotatedText | nl2br}}
{%- endif -%}
{%- if annot.comment %}
> {{annot.comment | nl2br}}
{%- endif %}
> [Page {{annot.page}}](zotero://open-pdf/library/items/{{annot.attachment.itemKey}}?page={{annot.page}}) {{annot.date | format("YYYY-MM-DD#HH:mm")}}

{% endfor %}
