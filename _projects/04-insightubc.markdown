---
title: InsightUBC
layout: single
permalink: /projects/insightubc
collection: projects
header:
    teaser: /assets/insightubc.avif
---

InsightUBC is a project built for a software engineering course at UBC, built to help navigate students around UBC. The project is hosted at [insightubc.randyzhu.com](https://insightubc.randyzhu.com), with the API running on Google Cloud Run (GCR) at [insightubc-api.randyzhu.com](https://insightubc-api.randyzhu.com/rooms/rooms?q=WOOD&limit=5). We used the HTML parsing library using `parse5` to scrape data from UBC scheduling services's website for all rooms at UBC, then designed a custom data-query DSL and implemented a simple tree-descent interpreter for said DSL. Finally, we implemented a RESTful backend API using express.js and the frontend using React.js, Microsoft's Fluent UI toolkit and Vite.

A technical presentation of the video is below:

<iframe width="1785" height="840" src="https://www.youtube.com/embed/5wqSMgVnB6w" title="CPSC 310 Insight UBC Campus Explorer Take 2" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>