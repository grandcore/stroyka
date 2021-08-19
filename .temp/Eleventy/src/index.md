---
index_page: true
layout: main.njk
title: DOCs
---

# {{ title }}

<ul>
{%- for i in collections.server -%}
  <li><a href="pages/{{ i.fileSlug }}/index.html">pages/{{ i.fileSlug }}/index.html</a></li>
{%- endfor -%}
</ul>

</ul>
