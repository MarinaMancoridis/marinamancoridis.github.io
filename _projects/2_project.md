---
layout: post
title: End-to-end Speech Synthesis with Generative Adversarial Networks
description: June 2022
img:
importance: 2
category: work
giscus_comments: false
---

I developed adversarial methods for end-to-end text-to-speech models as part of my Master's thesis. I also lectured on these concepts for Stanford's [CS 236G: Generative Adversarial Networks](https://cs236g.stanford.edu/) Winter 2021 offering. Here are some samples from [my implementation](https://github.com/vliu15/adversarial-tts), which is an adaptation of [Donahue et al., 2021](https://arxiv.org/abs/2006.03575); [Kim et al., 2020](https://arxiv.org/abs/2005.11129).

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include audio.liquid path="assets/audio/alliteration.wav" controls=true caption="Peter Piper picked a peck of pickled peppers" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include audio.liquid path="assets/audio/pangram.wav" controls=true caption="The quick brown fox jumps over the lazy dog" %}
    </div>
</div>
