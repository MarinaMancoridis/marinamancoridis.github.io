---
layout: page
permalink: /repositories/
title: projects
nav: true
hide_header: true
---

## project repositories

<p class="repo-section-description">code accompanying my research.</p>

{% if site.data.repositories.github_repos %}
  <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-stretch">
    {% for repo in site.data.repositories.github_repos %}
      {% include repository/repo.liquid repository=repo %}
    {% endfor %}
  </div>
{% else %}
  <p class="repo-section-description"><em>coming soon.</em></p>
{% endif %}

---

## bicycles of the mind

<p class="repo-section-description">small tools that make thinking easier.</p>

{% if site.data.repositories.bicycles_repos %}
  <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-stretch">
    {% for repo in site.data.repositories.bicycles_repos %}
      {% include repository/repo.liquid repository=repo %}
    {% endfor %}
  </div>
{% else %}
  <p class="repo-section-description"><em>coming soon.</em></p>
{% endif %}
