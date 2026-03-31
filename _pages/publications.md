---
layout: page
permalink: /publications/
title: Publications
description: Complete publication list, with selected papers highlighted.
nav: true
nav_order: 2
---

This page contains the **complete publication list**. Papers marked with the **Selected** badge highlight representative contributions.

{% assign pub_stats = site.data.publication_stats %}

<div class="row mb-4">
  <div class="col">
    <div class="d-flex flex-wrap" style="gap: 0.6rem;">
      <span class="badge rounded-pill" style="background-color: #495057; color: #fff; padding: 0.55rem 0.9rem;">Total publications: {{ pub_stats.total | default: 0 }}</span>
      <span class="badge rounded-pill" style="background-color: #6c757d; color: #fff; padding: 0.55rem 0.9rem;">Journal articles: {{ pub_stats.journal_articles | default: 0 }}</span>
      <span class="badge rounded-pill" style="background-color: #198754; color: #fff; padding: 0.55rem 0.9rem;">JCR-indexed: {{ pub_stats.jcr_indexed | default: 0 }}</span>
      <span class="badge rounded-pill" style="background-color: #b02a37; color: #fff; padding: 0.55rem 0.9rem;">D1 publications: {{ pub_stats.d1_publications | default: 0 }}</span>
    </div>
  </div>
</div>

<div class="publications">

{% bibliography %}

</div>
