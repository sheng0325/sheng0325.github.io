---
layout: single
permalink: /en/projects/
title: "Projects"
author_profile: true
lang: en
navigation: navigation-en
---

{% include language-switcher.html %}

## Projects

<div class="competition-grid">
  {% for project in site.data.projects-en %}
    <div class="competition-card">
      <div class="card-header">
        <div class="card-title">{{ project.name }}</div>
        <div class="card-year">{{ project.year }}</div>
      </div>

      {% if project.domain %}
        <div class="card-domain">{{ project.domain }}</div>
      {% endif %}

      {% if project.tech %}
        <div class="card-tech">{{ project.tech }}</div>
      {% endif %}

      <div class="card-description">
        <ul>
          {% for item in project.description %}
            <li>{{ item }}</li>
          {% endfor %}
        </ul>
      </div>

      {% if project.tags %}
        <div class="card-tech" style="margin-top: auto;">{{ project.tags }}</div>
      {% endif %}
    </div>
  {% endfor %}
</div>
