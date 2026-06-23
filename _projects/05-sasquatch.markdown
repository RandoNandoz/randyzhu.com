---
title: Sasquatch 
layout: single
permalink: /projects/sasquatch
collection: projects
header:
    teaser: /assets/sasquatch.avif
---

Sasquatch helps rock climbers increase training variety without the manual effort of route setting. The app scans spray walls and other high-density training walls to generate climbs digitally, which are then presented to users via a phone overlay.

Here's a video of one of our team members, Sean, climbing a route generated
by our app:

---

<iframe width="514" height="913" src="https://www.youtube.com/embed/hNeMPoVnH1A" title="Sasquatch Demo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---

Users take a photo (LiDAR is also supported) with Apple's native ARKit. Then, we built a custom backend API for the mobile app to call to analyze the picture and perform the needed calculations. We use a Detectron2 model to find holds in the image, then we run it through Gemini to filter out some errors that the model may find, and we use a randomized-constrained depth-first-search algorithm to find possible routes. To keep track of each user's climbs, we use a DB and GCS to store all the images, user data, routes and so forth. The project can be found on Github, here: [http://github.com/kliu04/sasquatch](http://github.com/kliu04/sasquatch)