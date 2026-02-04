---
layout: single
permalink: /en/projects/
title: "Projects"
author_profile: true
lang: en
navigation: navigation-en
---


<div class="competition-grid">
  {% for project in site.data.projects-en %}
    <div class="competition-card">
      <div class="card-header">
        <div class="card-title">{{ project.name }}</div>
        <div class="card-year">{{ project.year }}</div>
      </div>
      {% if project.tags %}
      <div class="card-domain">
        {{ project.tags }}
      </div>
      {% endif %}
      {% if project.description %}
      <div class="card-description">
        <ul>
          {% for item in project.description %}
          <li>{{ item }}</li>
          {% endfor %}
        </ul>
      </div>
      {% endif %}
    </div>
  {% endfor %}
</div>
