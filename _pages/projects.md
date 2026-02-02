---
permalink: /projects/
title: "项目"
---

<div class="competition-grid">
  {% for project in site.data.projects %}
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
