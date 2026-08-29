---
layout: page
permalink: /writing/
title: blog
# description: detours and commentary on people, algorithms, and life.
nav: true
nav_order: 5
---

I write short essays on psychology and algorithms [writing.marinamancoridis.com](https://writing.marinamancoridis.com/).

<div class="blog-preview">
  {% assign feed = site.data.substack %}
  {% for post in feed.posts %}
    <a class="blog-preview-post" href="{{ post.url }}">
      {% if post.image %}
        <img class="blog-preview-thumb" src="{{ post.image }}" alt="" loading="lazy">
      {% endif %}
      <span class="blog-preview-body">
        <span class="blog-preview-title">{{ post.title }}</span>
        {% if post.summary %}
          <span class="blog-preview-summary">{{ post.summary }}</span>
        {% endif %}
        {% if post.date %}
          <span class="blog-preview-date">{{ post.date | date: '%b %-d, %Y' }}</span>
        {% endif %}
      </span>
    </a>
  {% endfor %}

  <a class="blog-preview-more" href="https://writing.marinamancoridis.com/">
    {% if feed.posts.size > 0 %}read everything{% else %}visit the blog{% endif %}
    <i class="fa-solid fa-arrow-right"></i>
  </a>
</div>
