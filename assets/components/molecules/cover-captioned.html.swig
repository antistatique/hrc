---
title: cover-captioned
name: cover-captioned
collection: molecules
notes: |
  ##### Usage : `cover-captioned`
  ##### Options :
  - **option** - Type
---
<div class="cover" id="cover-captioned">
  <img
    src="{% if src %}{{src}}{% else %}https://images.contentful.com/fbqunpc2pjfz/1lJacxX2zqAs2GAkUYw6E8/2627d12dc35bdc522684f1be53e1de4c/hrc_coverhp.jpg{% endif %}"
    alt="{% if heading %}{{heading}}{% else %}Hôpital Riviera-Chablais{% endif %}"
    class="img-responsive">

  <div class="caption">
    <button class="caption-btn">i</button>
    <div class="caption-content">
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Si longus, levis dictata sunt. Non enim quaero quid verum, sed quid cuique dicendum sit.
    </div>
  </div>
</div>
