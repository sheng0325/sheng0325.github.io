---
layout: single
permalink: /competitions/
title: "荣誉奖项"
author_profile: true
lang: zh
navigation: navigation
---


## 比赛

<div class="competition-grid">
  {% for competition in site.data.competitions %}
    <div class="competition-card">
      <div class="card-header">
        <div class="card-title">{{ competition.name }}</div>
        <div class="card-year">{{ competition.year }}</div>
      </div>
      {% if competition.award %}
      <div class="card-award">
        {{ competition.award }}
      </div>
      {% endif %}
      {% if competition.outcome %}
      <div class="card-outcome">
        {{ competition.outcome }}
      </div>
      {% endif %}
    </div>
  {% endfor %}
</div>

## 其他荣誉

<div class="competition-grid">
  {% for honor in site.data.honors %}
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
