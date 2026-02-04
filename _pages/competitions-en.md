---
layout: single
permalink: /en/competitions/
title: "Honors & Awards"
author_profile: true
lang: en
---

{% include language-switcher.html %}

## Competitions

<div class="competition-grid">
  {% for competition in site.data.competitions-en %}
    <div class="competition-card">
      <div class="card-header">
        <div class="card-title">{{ competition.name }}</div>
        <div class="card-year">{{ competition.year }}</div>
      </div>

      {% if competition.award %}
        <div class="card-award">
          <i class="fas fa-trophy"></i> {{ competition.award }}
        </div>
      {% endif %}

      {% if competition.outcome %}
        <div class="card-outcome">{{ competition.outcome }}</div>
      {% endif %}
    </div>
  {% endfor %}
</div>

## Other Honors

<div class="competition-grid">
  {% for honor in site.data.honors-en %}
    <div class="competition-card">
      <div class="card-header">
        <div class="card-title">{{ honor.name }}</div>
        <div class="card-year">{{ honor.year }}</div>
      </div>
      {% if honor.award %}
        <div class="card-award">
          {{ honor.award }}
        </div>
      {% endif %}
    </div>
  {% endfor %}
</div>
